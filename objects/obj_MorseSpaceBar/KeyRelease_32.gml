/// @description 

isHold = false;

if(PressCount<(array_length_1d(TabCourtLong)) && enable)
{
	if(timer < 0.3*power(10,6))
	{
		TabCourtLong[PressCount] = 0;
		with(instance_find(obj_AfficheMorse1,PressCount)){
			sprite_index = spr_appuieCourt;
		}
		show_debug_message(TabCourtLong);
	}
	else
	{
		TabCourtLong[PressCount] = 1;
		with(instance_find(obj_AfficheMorse1,PressCount)){
			sprite_index = spr_appuieLong;
		}
		show_debug_message(TabCourtLong);
	}
	PressCount ++;
}
else
{
	show_debug_message("Raté Relacher");
	TabCourtLong = ResetTab(TabCourtLong);
}

timer = 0;


	


