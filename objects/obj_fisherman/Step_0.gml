if (keyboard_check(ord("I"))) {
	audio_play_sound(snd_fishing, 1, false);
	image_speed = 6;
}
else {
	image_speed = 0;
}