/// @desc tab ResetTab(tableau)
/// @arg tableau

show_debug_message("ResetTab");
obj_MorseSpaceBar.PressCount= 0;

for(i=0;i<=array_length_1d(argument0)-1;i++)
{
	argument0[i] = -1;
}

show_debug_message(argument0);
return argument0;