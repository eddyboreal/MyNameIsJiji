/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur

if mouse_check_button_pressed(mb_left) {
	if(collision_point(mouse_x,mouse_y,self,true,false)){
		if(obj_amecon.isOnTheLigne){
			with(obj_amecon) sprite_index = spr_hameconWithBait;
		}
		else{
			
		}
	}
}
