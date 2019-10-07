/// @desc bool DoSpotAnimation(obj,numberOfLoop,delayBetweenFrames)
/// @arg obj
/// @arg numberOfLoop
/// @arg delayBetweenFrames
show_debug_message("Animating");
	timer+=delta_time;
	if(timer>(argument2*power(10,6))){
		show_debug_message("timerPasted");
		timer =0;
		if(actualFrame<=numberOfFrames){
			actualFrame++;
			with(instance_find(argument0,ActualLetter)){
				image_index = 1;
			}
			show_debug_message("notEndLoop");
		}
		else{
			actualFrame = 0;
			with(instance_find(argument0,ActualLetter)){
				image_index = 0;
			}
			loopsDone++;
			show_debug_message(loopsDone);
		}
	}
	if(loopsDone>=argument1){
		show_debug_message("StopAnim");
		AnimateSpotMot=false;
		AnimationMotFinished = true;
	}