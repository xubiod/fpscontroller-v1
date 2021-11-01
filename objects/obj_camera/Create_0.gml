window_mouse_set(view_wport[0]/2, view_hport[0]/2);
mouse_x_previous = window_mouse_get_x();
mouse_y_previous = window_mouse_get_y();

x = 640;
y = 0;

startz = -32;
z = startz;

lookat_x = 0;
lookat_y = y;
lookat_z = startz;

dmx = 0;
dmy = 0;

xang = 0;
zang = 0;

xspd = 0;
yspd = 0;
zspd = 0;

xoff = 0;
yoff = 0;
zoff = 0;

look_dist = 128;

lock = true;

window_set_cursor(lock ? cr_none : cr_default);

scale = 4;

//application_surface_draw_enable(false);
if (surface_get_height(application_surface) != 720 / scale) surface_resize(application_surface, surface_get_width(application_surface) / scale, surface_get_height(application_surface) / scale);

fov = 90;
target_fov = 90;

delay = 0;
set_delay = 0;

kills = 0;
offset = 0;
kill_timer = -1;

score_colors = [c_white, c_orange, c_yellow];

shadow = vertex_create_buffer();
setup_plane(shadow, global.vft, spr_landing);
vertex_freeze(shadow);

looking = vertex_create_buffer();
setup_plane(looking, global.vft, spr_looking);
vertex_freeze(looking);