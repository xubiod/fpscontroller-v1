for (var i = 0; i < ds_list_size(allObj3D); i++) {
	delete allObj3D[| i];
}

ds_list_destroy(allObj3D);

surface_free(global.floor_surf);
surface_free(impact_surface);