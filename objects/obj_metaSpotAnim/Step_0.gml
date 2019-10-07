/// @description Insérez la description ici
// Vous pouvez écrire votre code dans cet éditeur
if(AnimateSpotMot){
	if(!AnimationMotStarted){
		show_debug_message("AnimStarted!");
		ActualLetter = obj_MorseSpaceBar.ActualLetter;
		AnimationMotStarted = true;
		with(instance_find(obj_SpotLettre,ActualLetter)){
			sprite_index = spr_SpotMorseMotsOK;
			image_index = 0;
			numberOfFrames = image_number;
		}
	}
	DoSpotAnimation(obj_SpotLettre,2,0.5);
}

/*if(AnimateSpotMot){
AnimationMotFinished = false;
	with(obj_SpotLettre){
		image_index=1;
		show_debug_message("END");
	}
}*/

if(AnimationMotFinished){
	AnimationMotFinished = false;
	with(obj_MorseSpaceBar){
		if(!TransmissionDone){
			if(ActualLetter<2){
				show_debug_message("On passe à la lettre suivante !");
				ActualLetter++;
			}
			else
			{
				ResetWordSpot();
				show_debug_message("SOS !");
				SOSDone = true;
			}
		}
		else{
			if(ActualLetter<3){
				show_debug_message("On passe à la lettre suivante !");
				ActualLetter++;
			}
			else
			{
				show_debug_message("JIJI !");
				IdDone = true;
			}
		}
	}
}