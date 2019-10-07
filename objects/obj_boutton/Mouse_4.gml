if (!clicked) audio_play_sound(snd_switch,0,false);
clicked = true;
with (obj_ordiBord)
{
	show_debug_message("COUOU")
	sprite_index = spr_ordiBordStart;
	statut = 1;
}
sprite_index = spr_buttonOn;

