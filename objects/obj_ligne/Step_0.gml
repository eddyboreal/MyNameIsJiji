//Fishing line goes up
if(trigger)
{
	if(!obj_amecon.isOnTheLigne && Animating)
	{
		with(obj_fisherman)
		{
			sprite_index = spr_fishermanLook;
			show_debug_message("trigBAS");
		}
		
	}
}


if(ActualState==1){
	GoingDown = false;
	if(self.image_yscale >1){
		timeStacked+=delta_time;
		if(timeStacked>0.3){
			timeStacked = 0;
			self.image_yscale -=0.3;
			audio_play_sound(snd_fishing, 1, false);

		}
	}

	else{
		ActualState = 2;
		timeStacked = 0;
	}
}

//Fishing line bounce
if(ActualState == 2){
	timeStacked+=0.1;
	if(timeStacked>0.5){
		self.image_yscale -=0.1;
		//End of animation
		if(timeStacked>0.7){
			//Reset variables
			AnimationFinished = true;
			Animating = false;
			//The player can interact again with the fishing line
			ActualState = 0;
			GoingDown = true;
			with(obj_fisherman)
			{
				sprite_index = spr_fisherman;
			}
		}
	}
	//Second Bounce
	else{
		self.image_yscale += 0.1;
	}
}