/// MOVING
var spd = 1 * (1 + keyboard_check(vk_lshift));

if (keyboard_check(ord("W"))) {
	xspd += lengthdir_x(spd, point_direction(x, y, lookat_x, lookat_y));
	yspd += lengthdir_y(spd, point_direction(x, y, lookat_x, lookat_y));
}

if (keyboard_check(ord("S"))) {
	xspd += lengthdir_x(spd, point_direction(x, y, lookat_x, lookat_y) + 180);
	yspd += lengthdir_y(spd, point_direction(x, y, lookat_x, lookat_y) + 180);
}

if (keyboard_check(ord("A"))) {
	xspd += lengthdir_x(spd, point_direction(x, y, lookat_x, lookat_y) + 270);
	yspd += lengthdir_y(spd, point_direction(x, y, lookat_x, lookat_y) + 270);
}

if (keyboard_check(ord("D"))) {
	xspd += lengthdir_x(spd, point_direction(x, y, lookat_x, lookat_y) + 90);
	yspd += lengthdir_y(spd, point_direction(x, y, lookat_x, lookat_y) + 90);
}

if (keyboard_check(vk_space) && z == startz) {
	zspd = -8;
}

x += xspd; y += yspd; z += zspd; zspd += 0.5;
xspd *= 0.9;
yspd *= 0.9;
//zspd *= 0.9;

if (z > startz) {
	z = startz;
	zspd = 0;
}

if (x > BOUNDS || x < -BOUNDS) {
	x = x > BOUNDS ? BOUNDS : -BOUNDS;
	xspd *= -0.95;
}

if (y > BOUNDS || y < -BOUNDS) {
	y = y > BOUNDS ? BOUNDS : -BOUNDS;
	yspd *= -0.95;
}

/// LOOKING
if (lock) {
	dmx = window_mouse_get_x() - view_wport[0]/2;
	dmy = window_mouse_get_y() - view_hport[0]/2;

	zang = clamp(zang + dmy, -89, 89);

	xang = (xang + dmx) % 360;
	xang = xang < 0 ? 360 - abs(xang) : xang;

	lookat_x = x + lengthdir_x(look_dist * cos(degtorad(zang)), xang);
	lookat_y = y + lengthdir_y(look_dist * cos(degtorad(zang)), xang);
	lookat_z = z + look_dist * sin(degtorad(zang));

	window_mouse_set(view_wport[0]/2, view_hport[0]/2);

	mouse_x_previous = view_wport[0]/2;
	mouse_y_previous = view_hport[0]/2;
}


/// CAMERA
camera_set_proj_mat(view_camera[0], matrix_build_projection_perspective_fov(-fov, -window_get_width()/window_get_height(), 8, 4096));
camera_set_view_mat(view_camera[0], matrix_build_lookat(x + xoff, y + yoff, z + zoff, lookat_x, lookat_y, lookat_z, 0, 0, -1));

fov = smooth_approach(fov, target_fov, 0.1);

target_fov = keyboard_check(vk_lcontrol) ? (keyboard_check(vk_lshift) ? 45 : 30) : (keyboard_check(vk_lshift) ? 105 : 90) + 2.5 * max(delay, 0);

delay--;
offset *= 0.9;

if (kill_timer > 0) kill_timer--;