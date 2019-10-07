/// @desc bool DoSpotAnimation(obj,spriteIndexToPut,startFrame,stopAtFrame,numberOfLoop,delayBetweenFrames)
/// @arg obj
/// @arg spriteIndexToPut
/// @arg numberOfFrame
/// @arg startFrame
/// @arg stopAtFrame
/// @arg numberOfLoop
/// @arg delayBetweenFrames



loopsDone = 0;
actualFrame = argument2;
numberOfFrames = 0;
timer = 0;

with(argument0){
	sprite_index = argument1;
	image_index = actualFrame;
	numberOfFrames = image_number;
}

while(loopsDone<argument5){	
	timer+=delta_time;
	if(timer>(argument6*power(10,6))){
		timer =0;
		if(actualFrame<numberOfFrames-1){
			actualFrame++;
			with(argument0){
				image_index = actualFrame;
			}
		}
		else{
			actualFrame = 0;
			with(argument0){
				image_index = actualFrame;
			}
			loopsDone++;
		}	
	}
}

with(argument0){
	image_index=argument3;
}