if (place_meeting(x, y, obj_amecon)) {
	if(obj_amecon.sprite_index == spr_hameconWithBait) {
		path_end();
		shaking = true;
		hooked = true;
	}
}
if (!place_meeting(x, y, obj_amecon) && hooked) {
	hooked = false;
	speed = 0;
	with (other) path_start(path_fish2, 1.5, path_action_continue, false);
}

if(shaking && hooked) {
	self.layer = layer_get_id("Instances");
	self.x = irandom_range(self.x - 2, self.x + 2);
	move_towards_point(obj_amecon.x, obj_amecon.y, 4);
}
