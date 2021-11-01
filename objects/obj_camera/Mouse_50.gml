#macro BULLET_SPD random_range(7, 9)

if (delay > 0) exit;

ds_list_add(obj_cubes.allObj3D, 
	new obj_cubes.obj3D(
		x, y, z,
		lengthdir_x(BULLET_SPD, point_direction(x, y, lookat_x, lookat_y)), lengthdir_y(BULLET_SPD, point_direction(x, y, lookat_x, lookat_y)), sin(degtorad(zang)) * BULLET_SPD,
		irandom(360), irandom(360), irandom(360), 
		random_range(0.9, 1.3), random_range(0.9, 1.3), random_range(0.9, 1.3),
		irandom_range(58, 62), bm_normal, false
	)
);

xspd -= lengthdir_x(BULLET_SPD * 0.1, point_direction(x, y, lookat_x, lookat_y));
yspd -= lengthdir_y(BULLET_SPD * 0.1, point_direction(x, y, lookat_x, lookat_y));
zspd -= sin(degtorad(zang)) * BULLET_SPD * 0.1;

delay = 5;
set_delay = delay;

xoff = random_range(-delay/5, delay/5);
yoff = random_range(-delay/5, delay/5);
zoff = random_range(-delay/5, delay/5);

// fov += 1.2 * max(delay, 0);

var s = audio_play_sound(asset_get_index("snd_pew" + string(irandom_range(1,3))), 1, false);
audio_sound_pitch(s, random_range(0.85, 1.25));

offset += 4;