// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function setup_block(vbuff, vf){
	
	#macro BOX_SL 4

	#macro BOX_X1 -BOX_SL
	#macro BOX_X2  BOX_SL
	#macro BOX_Y1 -BOX_SL
	#macro BOX_Y2  BOX_SL
	#macro BOX_Z1 -BOX_SL
	#macro BOX_Z2  BOX_SL

	#region head
	vertex_begin(vbuff, vf);

	#region head back
	vertex_position_3d(vbuff, BOX_X1, BOX_Y1, BOX_Z2);
	vertex_color(vbuff, c_red, 1);
	// vertex_texcoord(vbuff, 32/64, 8/64);

	vertex_position_3d(vbuff, BOX_X1, BOX_Y1, BOX_Z1);
	vertex_color(vbuff, c_red, 1);
	// vertex_texcoord(vbuff, 32/64, 16/64);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y1, BOX_Z1);
	vertex_color(vbuff, c_red, 1);
	// vertex_texcoord(vbuff, 24/64, 8/64);


	vertex_position_3d(vbuff, BOX_X1, BOX_Y1, BOX_Z2);
	vertex_color(vbuff, c_maroon, 1);
	// vertex_texcoord(vbuff, 32/64, 16/64);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y1, BOX_Z2);
	vertex_color(vbuff, c_maroon, 1);
	// vertex_texcoord(vbuff, 24/64, 16/64);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y1, BOX_Z1);
	vertex_color(vbuff, c_maroon, 1);
	// vertex_texcoord(vbuff, 24/64, 8/64);
	#endregion
	
	#region head top
	vertex_position_3d(vbuff, BOX_X1, BOX_Y1, BOX_Z1);
	vertex_color(vbuff, c_fuchsia, 1);
	// vertex_texcoord(vbuff, 8/64, 0);

	vertex_position_3d(vbuff, BOX_X1, BOX_Y2, BOX_Z1);
	vertex_color(vbuff, c_fuchsia, 1);
	// vertex_texcoord(vbuff, 8/64, 8/64);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y2, BOX_Z1);
	vertex_color(vbuff, c_fuchsia, 1);
	// vertex_texcoord(vbuff, 16/64, 8/64);


	vertex_position_3d(vbuff, BOX_X1, BOX_Y1, BOX_Z1);
	vertex_color(vbuff, c_purple, 1);
	// vertex_texcoord(vbuff, 8/64, 0);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y1, BOX_Z1);
	vertex_color(vbuff, c_purple, 1);
	// vertex_texcoord(vbuff, 16/64, 0);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y2, BOX_Z1);
	vertex_color(vbuff, c_purple, 1);
	// vertex_texcoord(vbuff, 16/64, 8/64);
	#endregion

	#region head left
	vertex_position_3d(vbuff, BOX_X1, BOX_Y2, BOX_Z1);
	vertex_color(vbuff, c_aqua, 1);
	// vertex_texcoord(vbuff, 8/64, 8/64);

	vertex_position_3d(vbuff, BOX_X1, BOX_Y2, BOX_Z2);
	vertex_color(vbuff, c_aqua, 1);
	// vertex_texcoord(vbuff, 8/64, 16/64);

	vertex_position_3d(vbuff, BOX_X1, BOX_Y1, BOX_Z1);
	vertex_color(vbuff, c_aqua, 1);
	// vertex_texcoord(vbuff, 0, 8/64);


	vertex_position_3d(vbuff, BOX_X1, BOX_Y1, BOX_Z1);
	vertex_color(vbuff, c_teal, 1);
	// vertex_texcoord(vbuff, 0, 8/64);

	vertex_position_3d(vbuff, BOX_X1, BOX_Y2, BOX_Z2);
	vertex_color(vbuff, c_teal, 1);
	// vertex_texcoord(vbuff, 8/64, 16/64);

	vertex_position_3d(vbuff, BOX_X1, BOX_Y1, BOX_Z2);
	vertex_color(vbuff, c_teal, 1);
	// vertex_texcoord(vbuff, 0, 16/64);
	#endregion
	
	#region head front
	vertex_position_3d(vbuff, BOX_X1, BOX_Y2, BOX_Z1);
	vertex_color(vbuff, c_white, 1);
	// vertex_texcoord(vbuff, 8/64, 8/64);

	vertex_position_3d(vbuff, BOX_X1, BOX_Y2, BOX_Z2);
	vertex_color(vbuff, c_white, 1);
	// vertex_texcoord(vbuff, 8/64, 16/64);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y2, BOX_Z1);
	vertex_color(vbuff, c_white, 1);
	// vertex_texcoord(vbuff, 16/64, 8/64);


	vertex_position_3d(vbuff, BOX_X1, BOX_Y2, BOX_Z2);
	vertex_color(vbuff, c_gray, 1);
	// vertex_texcoord(vbuff, 8/64, 16/64);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y2, BOX_Z2);
	vertex_color(vbuff, c_gray, 1);
	// vertex_texcoord(vbuff, 16/64, 16/64);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y2, BOX_Z1);
	vertex_color(vbuff, c_gray, 1);
	// vertex_texcoord(vbuff, 16/64, 8/64);
	#endregion

	#region head right
	vertex_position_3d(vbuff, BOX_X2, BOX_Y2, BOX_Z1);
	vertex_color(vbuff, c_yellow, 1);
	// vertex_texcoord(vbuff, 16/64, 8/64);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y2, BOX_Z2);
	vertex_color(vbuff, c_yellow, 1);
	// vertex_texcoord(vbuff, 16/64, 16/64);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y1, BOX_Z1);
	vertex_color(vbuff, c_yellow, 1);
	// vertex_texcoord(vbuff, 24/64, 8/64);


	vertex_position_3d(vbuff, BOX_X2, BOX_Y1, BOX_Z1);
	vertex_color(vbuff, c_orange, 1);
	// vertex_texcoord(vbuff, 24/64, 8/64);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y2, BOX_Z2);
	vertex_color(vbuff, c_orange, 1);
	// vertex_texcoord(vbuff, 16/64, 16/64);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y1, BOX_Z2);
	vertex_color(vbuff, c_orange, 1);
	// vertex_texcoord(vbuff, 24/64, 16/64);
	#endregion

	#region head bottom
	vertex_position_3d(vbuff, BOX_X1, BOX_Y1, BOX_Z2);
	vertex_color(vbuff, c_lime, 1);
	// vertex_texcoord(vbuff, 16/64, 0);

	vertex_position_3d(vbuff, BOX_X1, BOX_Y2, BOX_Z2);
	vertex_color(vbuff, c_lime, 1);
	// vertex_texcoord(vbuff, 16/64, 8/64);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y2, BOX_Z2);
	vertex_color(vbuff, c_lime, 1);
	// vertex_texcoord(vbuff, 24/64, 8/64);


	vertex_position_3d(vbuff, BOX_X1, BOX_Y1, BOX_Z2);
	vertex_color(vbuff, c_green, 1);
	// vertex_texcoord(vbuff, 16/64, 0);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y1, BOX_Z2);
	vertex_color(vbuff, c_green, 1);
	// vertex_texcoord(vbuff, 24/64, 0);

	vertex_position_3d(vbuff, BOX_X2, BOX_Y2, BOX_Z2);
	vertex_color(vbuff, c_green, 1);
	// vertex_texcoord(vbuff, 24/64, 8/64);
	#endregion

	vertex_end(vbuff);
	#endregion
}