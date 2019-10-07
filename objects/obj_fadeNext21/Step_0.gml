if (obj_MorseSpaceBar.IdDone)
{
	if (!crashed) audio_play_sound(snd_crash, 1, false);
	crashed = true;
	a = clamp(a + (fade*0.01), 0,1);

	if ( a == 1)
   	{
		show_debug_message("in a = 1")
		room_goto_next();
		fade = -1;
	}
} 