

var halfw = w *0.5;

//draw boite
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_roundrect_ext(x-halfw-border,y-h-(border*2),x+halfw+border,y, 15, 15, false);
	draw_sprite (spr_marker, 0, x,y);
	draw_set_alpha(1);
	
	//draw texte
	DrawSetText(c_black, f_sign, fa_center, fa_top );
	draw_text(x,y-h-border, argument0);