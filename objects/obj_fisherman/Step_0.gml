if (keyboard_check(ord("I")) && obj_ligne.GoingDown && obj_view1.startGame && !obj_fish.gone)
{
	audio_play_sound(snd_fishing, 1, false);
	image_speed = 6;
}
else {
	image_speed = 0;
}