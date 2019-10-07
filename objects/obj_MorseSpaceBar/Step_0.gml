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
		with(obj_metaSpotAnim){
			loopsDone = 0;
			AnimateSpotMot = true;
			AnimationMotStarted = false;
			AnimationMotFinished = false;
		}
	}
	else{
		with(obj_metaSpotAnim){
			AnimateBigSpot = true;
		}
		show_debug_message("Raté recommence !");
	}
		
}

if(TransmissionDone && timerLettre <= 0 )
{
	isHold = true;
	timerLettre = 2;
	if(ReadLetterOpti(TabCourtLong,tabJIJI,ActualLetter)){
		with(obj_metaSpotAnim){
			loopsDone = 0;
			AnimateSpotMot = true;
			AnimationMotStarted = false;
			AnimationMotFinished = false;
		}
	}
	else{
		with(obj_metaSpotAnim){
			AnimateBigSpot = true;
		}
	}
}

