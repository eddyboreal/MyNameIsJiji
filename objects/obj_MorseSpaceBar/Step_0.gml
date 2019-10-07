 /// @description
if(SOSDone){
	enable = false;
	if(startWriting < 17){
		if(writingTimer > 0.5*power(10,6)){
			writingTimer = 0;
			a = startWriting-6;
			if(tabReponseScenario[a] == 0){
				with(instance_find(obj_AfficheMorse1,startWriting)){
					sprite_index = spr_appuieCourt;
				}
			}
			else{
				with(instance_find(obj_AfficheMorse1,startWriting)){	
					sprite_index = spr_appuieLong;
				}
			}
			startWriting++;
		}
		else{
			writingTimer+= delta_time;
		}
	}
	else{
		show_debug_message("Transmission Over");
		SOSDone = false;
		enable = true;
		TransmissionDone = true;
		ActualLetter = 0;
	}
}


if (!isHold)
{
	timerLettre -= delta_time;
}

if (timerLettre <= 0 && !TransmissionDone)
{
	isHold = true;
	timerLettre = 2;
	if(ReadLetterOpti(TabCourtLong,tabSOS,ActualLetter)){
		with(obj_spot){
			sprite_index = spr_SpotMorseLettreOK;
			 
		}
		/*
		with(instance_find(obj_SpotLettre,ActualLetter)){
			sprite_index = spr_SpotMorseMotsOK;
		}*/
		//DoSpotAnimation(obj_SpotLettre,)
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
		with(obj_spot){
			sprite_index = spr_SpotMorseLettreNO;
		}
		show_debug_message("Raté recommence !");
	}
		
}

if(TransmissionDone && timerLettre <= 0 )
{
	isHold = true;
	timerLettre = 2;
	if(ReadLetterOpti(TabCourtLong,tabJIJI,ActualLetter)){
		with(obj_spot){
				sprite_index = spr_SpotMorseLettreOK;
			}
			with(instance_find(obj_SpotLettre,ActualLetter)){
				sprite_index = spr_SpotMorseMotsOK;
			}
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
	else{
		with(obj_spot){
				sprite_index = spr_SpotMorseLettreNO;
		}
	}
}

