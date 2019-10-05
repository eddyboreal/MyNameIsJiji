/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(ActualState == 0){
	if(self.image_yscale <=10){
		if(obj_amecon.isOnTheLigne){
			show_debug_message(obj_amecon.y);
			obj_amecon.y = self.y + self.sprite_height;
		}
		self.image_yscale +=0.3;
	}
	else /*if(!obj_amecon.isOnTheLigne)*/{
	ActualState = 1;
	}
}