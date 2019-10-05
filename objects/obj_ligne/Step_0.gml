/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(ActualState==1 ){
	if(self.image_yscale >1){
		timeStacked+=delta_time;
		if(timeStacked>0.3){
			timeStacked = 0;
			self.image_yscale -=0.3;
			if(obj_amecon.isOnTheLigne){
				obj_amecon.y = self.y + self.sprite_height;
			}
		}
	}
	else{
			ActualState = 2;
			timeStacked = 0;
		}
}

if(ActualState == 2){
	timeStacked+=0.1;
	if(timeStacked>0.5){
		self.image_yscale -=0.1;
		if(obj_amecon.isOnTheLigne){
			obj_amecon.y = self.y + self.sprite_height;
		}
		if(timeStacked>0.7){
			ActualState = 0;
			if(obj_amecon.WillBeOnTheLigne && !obj_amecon.isOnTheLigne){
				TeleportObjectToAnother(obj_amecon,self,0,0);
				obj_amecon.isOnTheLigne = true;
			}
		}
	}
	else{
		self.image_yscale += 0.1;
		if(obj_amecon.isOnTheLigne){
			obj_amecon.y = self.y + self.sprite_height;
		}
	}
	
}