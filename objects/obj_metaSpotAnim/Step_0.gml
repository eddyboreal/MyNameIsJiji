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

if(AnimateBigSpot){
	if(!AnimationBigSpotStarted){
		AnimationBigSpotStarted = true;
		with(obj_spot){
			show_debug_message("changed sprite to NO");
			sprite_index = spr_SpotMorseLettreNO;
		}
	}
	with(obj_spot){
		image_speed = 1;
	}
	timerLettre += delta_time;
	if(timerLettre>= 1.5*power(10,6)){
		AnimateBigSpot = false;
		AnimationBigSpotStarted = false;
		timerLettre = 0;
		with(obj_spot){
			image_speed = 0;
			sprite_index = spr_SpotMorseLettre;
		}
		
	}
	
}