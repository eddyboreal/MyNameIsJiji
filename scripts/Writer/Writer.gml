/// @desc bool Writer(text,speed)
/// @arg text
/// @arg speed

//letters = 0;
show_debug_message(string_length(text_current));
show_debug_message(string_length(argument0));

if(string_length(text_current) < string_length(argument0))
{
	letters += argument1;
	text_current = string_copy(argument0, 1, floor(letters));
	draw_set_font(f_sign);	
	if (h == 0)
	{
		h = string_height(argument0);
	}
		w = string_width(text_current);
		return false;
}
else
{
	show_debug_message("return true")
	return true	;
}


//return text_current;
	