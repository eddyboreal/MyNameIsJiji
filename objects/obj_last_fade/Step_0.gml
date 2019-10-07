if (obj_rosalie_room21.fell)
{
	audio_sound_gain(snd_alarm, 0, 4000);
	audio_sound_gain(snd_MusicSubMarin, 0, 4000);
	a = clamp(a + (fade*0.005), 0,1);

	if ( a == 1)
   	{
		show_debug_message("in a = 1")
		room_goto_next();
		fade = -1;
	}
} 