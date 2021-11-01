if (!ds_exists(allObj3D, ds_type_list)) exit;

var a = array_create(ds_list_size(allObj3D));

for (var i = 0; i < ds_list_size(allObj3D); i++) {
	allObj3D[| i].step();
	a[i] = allObj3D[| i].dead;
}

for (var i = array_length(a) - 1; i > -1; i--) {
	if (a[i]) {
		delete allObj3D[| i];
		ds_list_delete(allObj3D, i);
	}
}