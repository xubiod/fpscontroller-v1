// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setup_vf_texture(){
	vertex_format_begin();

	vertex_format_add_position_3d();
	vertex_format_add_color();
	vertex_format_add_texcoord();

	global.vft = vertex_format_end();
}