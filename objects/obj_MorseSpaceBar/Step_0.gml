 /// @description
if(SOSDone){
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
		TransmissionDone = true;
	}
}


if (!isHold)
{
	timerLettre -= delta_time;
}
if (timerLettre <= 0)
{
	isHold = true;
	timerLettre = 2;
	if(ReadLetterOpti(TabCourtLong,tabSOS,ActualLetter)){
		//Change Sprite validation
		if(ActualLetter<2){
			show_debug_message("On passe à la lettre suivante !");
			ActualLetter++;
		}
		else
		{
			SOSDone = true;
		}
			
	}
	else{
		show_debug_message("Raté recommence !");
	}
		
}

if(TransmissionDone)
{
	
		
}

