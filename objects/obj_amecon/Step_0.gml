/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(obj_view1.startGame)
{
	if(obj_ligne.AnimationFinished){
		if(WillBeOnTheLigne && !isOnTheLigne){
				TeleportObjectToAnother(self,obj_ligne,0,0);
				isOnTheLigne = true;
				obj_ligne.Animating = false;
		}
	}
	
	if(isOnTheLigne){
		self.y = obj_ligne.y + obj_ligne.sprite_height;
	}
}	

