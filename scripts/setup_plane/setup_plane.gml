// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setup_plane(vbuff, vf, sprite){
	
	#macro PLA_SL 1

	#macro PLA_X1 -PLA_SL
	#macro PLA_X2  PLA_SL
	#macro PLA_Y1 -PLA_SL
	#macro PLA_Y2  PLA_SL
	#macro PLA_Z1 0

	var a = sprite_get_uvs(sprite, 0);

	#region head
	vertex_begin(vbuff, vf);

	#region head top
	vertex_position_3d(vbuff, PLA_X1, PLA_Y1, PLA_Z1);
	vertex_color(vbuff, c_white, 1);
	vertex_texcoord(vbuff, a[0], a[1]);

	vertex_position_3d(vbuff, PLA_X1, PLA_Y2, PLA_Z1);
	vertex_color(vbuff, c_white, 1);
	vertex_texcoord(vbuff, a[0], a[3]);

	vertex_position_3d(vbuff, PLA_X2, PLA_Y2, PLA_Z1);
	vertex_color(vbuff, c_white, 1);
	vertex_texcoord(vbuff, a[2], a[3]);


	vertex_position_3d(vbuff, PLA_X1, PLA_Y1, PLA_Z1);
	vertex_color(vbuff, c_white, 1);
	vertex_texcoord(vbuff, a[0], a[1]);

	vertex_position_3d(vbuff, PLA_X2, PLA_Y1, PLA_Z1);
	vertex_color(vbuff, c_white, 1);
	vertex_texcoord(vbuff, a[2], a[1]);

	vertex_position_3d(vbuff, PLA_X2, PLA_Y2, PLA_Z1);
	vertex_color(vbuff, c_white, 1);
	vertex_texcoord(vbuff, a[2], a[3]);
	#endregion

	vertex_end(vbuff);
	#endregion
}