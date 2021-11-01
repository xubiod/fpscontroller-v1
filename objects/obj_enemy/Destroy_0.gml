vertex_delete_buffer(me);

obj_camera.kills++;
obj_camera.kill_timer = 600;

if (first) {
	obj_chessmaster.alarm[0] = 1;
}