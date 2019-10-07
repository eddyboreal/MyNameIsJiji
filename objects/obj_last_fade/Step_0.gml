if (obj_rosalie_room21.fell)
{
	a = clamp(a + (fade*0.005), 0,1);

	if ( a == 1)
   	{
		show_debug_message("in a = 1")
		room_goto_next();
		fade = -1;
	}
} 