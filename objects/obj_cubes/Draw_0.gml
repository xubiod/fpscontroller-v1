if (!ds_exists(allObj3D, ds_type_list)) exit;

var f = gpu_get_fog();
gpu_set_fog(true, c_black, 512, 4096);

for (var i = 0; i < ds_list_size(allObj3D); i++) {
	var pass = true;
	var camAng = point_direction(obj_camera.x, obj_camera.y, obj_camera.lookat_x, obj_camera.lookat_y);
	var cubeAng = point_direction(obj_camera.x, obj_camera.y, allObj3D[| i].x, allObj3D[| i].y);
	
	if (angle_difference(camAng - 90, cubeAng) > 0 && angle_difference(camAng + 90, cubeAng) < 45) pass = false;
	
	//if (pass) { 
		allObj3D[| i].draw(me, shadow, tex);
	//}
}

draw_set_color(c_white);
draw_set_alpha(0.5 + (0.5 * sin(current_time / 200)));
draw_rectangle(-2048, -2048, 2048, 2048, true);

for (var i = 0; i < 360; i += 45) {
	draw_set_alpha(0.5 + (0.5 * sin(current_time / 500 + degtorad(i))));
	draw_rectangle(-2048 - (sin(current_time/500 + degtorad(i)) * 16), -2048 - (sin(current_time/500 + degtorad(i)) * 16), 2048 + (sin(current_time/500 + degtorad(i)) * 16), 2048 + (sin(current_time/500 + degtorad(i)) * 16), true);
}

gpu_set_blendmode(bm_normal);
gpu_set_fog(f[0], f[1], f[2], f[3]);