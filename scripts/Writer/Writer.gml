/// @desc string Writer(text,speed)
/// @arg text
/// @arg speed

//show_debug_message(string_length(text_current));
//show_debug_message(lenght);

text_current = "";
letters = 0;

while(string_length(text_current) < string_length(argument0))
{
	letters += argument1;
	text_current = string_copy(argument0, 1, floor(letters));
	draw_set_font(f_sign);	
	if (h == 0)
	{
		h = string_height(argument0);
	}
		w = string_width(text_current);
		DrawText(text_current);
}

//return text_current;
	