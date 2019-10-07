if(obj_view1.startGame)
{
	
	if(!Text1Done)
	{
		Text1Done = Writer(text1, 0.25);
	}
	else{	
		wait += delta_time;
	}
	
	
	if(!Text2Done && wait >= power(10,6) )
	{
		if(!reset)
		{
			reset = true;
			text_current = "";
			letters = 0;
			w = 0;
			h = 0;
			border = 10;
		}
		show_debug_message("go text 2");
		Text2Done = Writer(text2, 0.25);	
	}
	//animStarted = true;
	//if(string_length(text_current) < lenght)
	//{

	//	timer_text += delta_time;
	//	letters += spd;
	//	text_current = string_copy(text1, 1, floor(letters));
	//	draw_set_font(f_sign);	
	//	if (h == 0)
	//	{
	//		h = string_height(text1);
	//	}

	//	w = string_width(text_current);
	//}
	//else{
	//	Text1Done = true;
	//}
	
}