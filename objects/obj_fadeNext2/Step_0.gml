if (obj_fish.x > room_width)
{
	a = clamp(a + (fade*0.025), 0,1);

	if ( a == 1)
   	{
		show_debug_message("in a = 1")
		room_goto_next();
		fade = -1;
	}
}