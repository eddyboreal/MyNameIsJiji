/// @description 

isHold = false;

if(PressCount<(array_length_1d(TabCourtLong)))
{
	if(timer < 0.3*power(10,6))
	{
		TabCourtLong[PressCount] = 0;
		show_debug_message("Court");
		show_debug_message(TabCourtLong);
	}
	else
	{
		TabCourtLong[PressCount] = 1;
		show_debug_message("long");
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


	


