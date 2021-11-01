#macro BULLET_SPD_SHOT random_range(12, 18)
#macro SPREAD 15

if (delay > 0) exit;

repeat 30 {
	ds_list_add(obj_cubes.allObj3D, 
		new obj_cubes.obj3D(
			x, y, z,
			lengthdir_x(BULLET_SPD_SHOT, point_direction(x, y, lookat_x, lookat_y) + random_range(-SPREAD, SPREAD)), lengthdir_y(BULLET_SPD_SHOT, point_direction(x, y, lookat_x, lookat_y) + random_range(-SPREAD, SPREAD)), sin(degtorad(zang + random_range(-SPREAD, SPREAD))) * BULLET_SPD,
			irandom(360), irandom(360), irandom(360), 
			random_range(0.6, 0.9), random_range(0.6, 0.9), random_range(0.6, 0.9),
			irandom_range(58, 62), bm_add, false
		)
	);
}

xspd -= lengthdir_x(BULLET_SPD_SHOT * 0.75, point_direction(x, y, lookat_x, lookat_y));
yspd -= lengthdir_y(BULLET_SPD_SHOT * 0.75, point_direction(x, y, lookat_x, lookat_y));
zspd -= sin(degtorad(zang)) * BULLET_SPD_SHOT * 0.75;

delay = 25;
set_delay = delay;

xoff = random_range(-delay/5, delay/5);
yoff = random_range(-delay/5, delay/5);
zoff = random_range(-delay/5, delay/5);

fov += 0.75 * max(delay, 0);

repeat 3 {
	var s = audio_play_sound(asset_get_index("snd_bang" + string(irandom_range(1,3))), 1, false);
	audio_sound_pitch(s, random_range(0.85, 1.25));
}

// kills++;
offset += 32;