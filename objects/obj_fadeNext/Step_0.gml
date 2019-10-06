if (obj_ordiBord.statut == 1 && obj_ordiBord.next == 1)
{
	show_debug_message("coucoucoucpuocoucouc")
	a = clamp(a + (fade*0.05), 0,1);

	if ( a == 1)
   	{
		show_debug_message("in a = 1")
		room_goto_next();
		fade = -1;
	}
}