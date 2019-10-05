if(keyboard_check_pressed(vk_space)) {
	startGame = true;
}
if (startGame && camera_get_view_y(view_camera[0]) < obj_view1.y - 50) {
	camera_set_view_pos(view_camera[0], 0, viewY);
	viewY = lerp(viewY, obj_view1.y, 0.02);
}