repeat (irandom_range(5, 15)) {
	var d = irandom(360);
	instance_create_depth(lengthdir_x(3072, d), lengthdir_y(3072, d), 0, obj_enemy);
}

alarm[0] = irandom_range(30, 60) * 15;