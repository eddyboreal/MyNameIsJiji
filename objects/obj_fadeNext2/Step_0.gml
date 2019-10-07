if (obj_submarine.x > 200)
{
	audio_sound_gain(snd_title_screen, 0, 4000);
	a = clamp(a + (fade*0.0025), 0,1);

	if ( a == 1)
   	{
		show_debug_message("in a = 1")
		room_goto_next();
		fade = -1;
	}
} 