gpu_set_ztestenable(true);
gpu_set_zwriteenable(true);

layer_force_draw_depth(true, 0);

me = vertex_create_buffer();
setup_block(me, global.vf);
vertex_freeze(me);

shadow = vertex_create_buffer();
setup_plane(shadow, global.vft, spr_cubeshadow);
vertex_freeze(shadow);

tex = noone; //sprite_get_texture(spr_cube, 0);

#macro BOUNDS 2048

global.floor_surf = noone;

allObj3D = ds_list_create();
impact_surface = noone;

obj3D = function(_x, _y, _z, _xd, _yd, _zd, _xa, _ya, _za, _xs, _ys, _zs, _ls, _bm, _static) constructor {
	#region init vars
	
	x = _x;
	y = _y;
	z = _z;
	
	xstart = _x;
	ystart = _y;
	zstart = _z;
	
	xang = _xa;
	yang = _ya;
	zang = _za;
	
	xsca = _xs;
	ysca = _ys;
	zsca = _zs;
	
	xscastart = _xs;
	yscastart = _ys;
	zscastart = _zs;
	
	xangc = random_range(-2,2);
	yangc = random_range(-2,2);
	zangc = random_range(-2,2);
	
	xspd = _xd;
	yspd = _yd;
	zspd = _zd;
	
	mat = matrix_build(x, y, z, xang, yang, zang, xsca, ysca, zsca);
	mat_plane = matrix_build(x, y, -1, 0, 0, 0, 8, 8, 1);
	random_n = random(2000);
	
	life = 0;
	gravity = 0.2;
	ls = _ls;
	
	blendmode = _bm;
	motionless = _static;
	
	dead = false;
	impact = false;
	
	other_num = 0;
	
	#endregion
	
	static draw = function(vbuff, shadowbuff, tex) {
		if (life % 2 != 0 && life > .65 * ls) exit; 
		if (life % 4 != 0 && life > .85 * ls) exit; 
		
		var b = gpu_get_blendmode();
		gpu_set_blendmode(blendmode);
		
		matrix_set(matrix_world, mat);
		vertex_submit(vbuff, pr_trianglelist, -1); //tex);
		matrix_set(matrix_world, matrix_build_identity());
		
		gpu_set_blendmode(b);
		
		matrix_set(matrix_world, mat_plane);
		vertex_submit(shadowbuff, pr_trianglelist, sprite_get_texture(spr_cubeshadow, 0)); //tex);
		matrix_set(matrix_world, matrix_build_identity());
	}
	
	static step = function() {
		if (!motionless) {
			x += xspd;
			y += yspd;
			z += zspd;
		
			xang += xangc;
			yang += yangc;
			zang += zangc;
		}
		
		// z = zstart + (64 * sin((current_time + random_n)/1000));
	
		mat = matrix_build(x, y, z, xang, yang, zang, xsca, ysca, zsca);
		var dist = (32 / (32 + abs(z)));
		
		mat_plane = matrix_build(x, y, -1, 0, 0, 0, 8, 8, 1);
		
		if (ls != -1) {
			life++;
			if (life > ls) dead = true;
		}
		
		if (z > 0) {
			z = 0;
			// _impact = true;
			
			// __ix = x; // + BOUNDS;
			// __iy = y; // + BOUNDS;
			// show_debug_message("impact at " + string(__ix) + "," + string(__iy) + "["  + string(x) + "," + string(y) +  "]");
			//ds_list_add(obj_cubes.impacts, [__ix, __iy, 0]);
			impact = true;
			
			zspd *= -0.95;
		} else {
			zspd += gravity;
		}
		
		if (x > BOUNDS || x < -BOUNDS) {
			x = x > BOUNDS ? BOUNDS : -BOUNDS;
			xspd *= -0.95;
		}
		
		if (y > BOUNDS || y < -BOUNDS) {
			y = y > BOUNDS ? BOUNDS : -BOUNDS;
			yspd *= -0.95;
		}
		
		if (motionless) return;
		
		var near_en = instance_nearest(x, y, obj_enemy);
		
		if (near_en != noone) {
			if (point_distance(x, y, near_en.x, near_en.y) < near_en.scale * 3) {
				near_en.hits--;
				life = 0;
			}
		}
	}
}

// repeat 256 {
// 	ds_list_add(allObj3D, 
// 		new obj3D(
// 			irandom_range(-BOUNDS, BOUNDS), irandom_range(-BOUNDS, BOUNDS), irandom_range(-256, -1024), 
// 			0, 0, 0,
// 			0, 0, irandom(360),
// 			// irandom(360), irandom(360), irandom(360), 
// 			// irandom_range(1, 16), irandom_range(1, 16), irandom_range(1,16)
// 			irandom_range(1, 8), irandom_range(1, 8), 256,
// 			-1, bm_normal, true
// 		)
// 	);
// }