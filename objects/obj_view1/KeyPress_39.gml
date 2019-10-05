show_debug_message(lerp(0, 10, 0.1));

while(camera_get_view_y(view_camera[0]) < obj_view1.y -50) {
	camera_set_view_pos(view_camera[0], 0, viewY);
	viewY = lerp(viewY, obj_view1.y, 0.0001);
	show_debug_message(viewY);
}
