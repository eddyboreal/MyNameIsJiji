if (obj_fish.out && camera_get_view_y(view_camera[0]) < obj_view2.y - 50) {
	camera_set_view_pos(view_camera[0], 0, viewY);
	viewY = lerp(viewY, obj_view2.y, 0.01);
}