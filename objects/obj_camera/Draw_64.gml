draw_set_color(c_white);
draw_set_alpha(((delay + 1)/50));

gpu_set_blendmode(bm_add);
draw_rectangle(0, 0, surface_get_width(application_surface), surface_get_height(application_surface), false);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

var p  = kill_timer / 600;
var ip = 1 - p;

var _h = random_range(-offset, offset) + random_range(-ip * 8, ip * 8);
var _v = random_range(-offset, offset) + random_range(-ip * 8, ip * 8);

var _sc = 4;

draw_set_alpha(0.15 + (ip * 0.85));
draw_set_color(kill_timer > 0 ? merge_color(c_red, c_white, p) : c_black);
draw_set_font(font_score);
draw_text_transformed(surface_get_width(application_surface)/2 + _h, surface_get_height(application_surface)/2 + _v, kills, _sc, _sc, 0);

//draw_set_color(c_blue);
//gpu_set_blendmode(bm_subtract);

//var percent = kill_timer / 600;
//var txtHeight = string_height(kills) * _sc;
//var txtWidth = string_width(kills) * _sc;

//_v -= txtHeight/2;
//_h -= txtWidth/2;

//draw_rectangle(
//	surface_get_width(application_surface)/2 + _h, 
//	surface_get_height(application_surface)/2 + _v, 
//	surface_get_width(application_surface)/2 + _h + txtWidth, 
//	surface_get_height(application_surface)/2 + _v + (txtHeight * percent), false);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

gpu_set_blendmode(bm_add);
draw_sprite_ext(spr_crosshair, min(max(delay, 0), sprite_get_number(spr_crosshair)-1), surface_get_width(application_surface)/2, surface_get_height(application_surface)/2, 1, 1, 0, c_lime, 0.5);

draw_set_alpha(1);
draw_sprite(spr_crosshair, min(max(delay, 0), sprite_get_number(spr_crosshair)-1), window_mouse_get_x()/scale, window_mouse_get_y()/scale);

gpu_set_blendmode(bm_normal);