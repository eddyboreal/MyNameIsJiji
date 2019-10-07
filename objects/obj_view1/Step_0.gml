if mouse_check_button_pressed(mb_left) {
	startGame = true;
}

if (startGame && camera_get_view_y(view_camera[0]) < obj_view1.y - 50) {
	camera_set_view_pos(view_camera[0], 0, viewY);
	viewY = lerp(viewY, obj_view1.y, 0.01);
	obj_view2.viewY = self.viewY;
}