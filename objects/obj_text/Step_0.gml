if(obj_view1.startGame && !animStarted)
{
	/*Writer(text1, 0.25);
	animStarted = true;*/
	if(string_length(text_current) < lenght)
	{

		timer_text += delta_time;
		letters += spd;
		text_current = string_copy(text1, 1, floor(letters));
		draw_set_font(f_sign);	
		if (h == 0)
		{
			h = string_height(text1);
		}

		w = string_width(text_current);
	}
	else{
		Text1Done = true;
	}
	
}