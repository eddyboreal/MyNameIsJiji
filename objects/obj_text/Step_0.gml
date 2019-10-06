/// @desc Progrès texte

timer_text += delta_time;
letters += spd;
text_current = string_copy(text[0], 1, floor(letters));

draw_set_font(f_sign);
if (h == 0) h = string_height(text[0]);
w = string_width(text_current);