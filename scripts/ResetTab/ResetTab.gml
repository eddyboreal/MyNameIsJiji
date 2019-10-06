/// @desc tab ResetTab(tableau)
/// @arg tableau

show_debug_message("ResetTab");
obj_MorseSpaceBar.PressCount= 0;

for(i=0;i<=array_length_1d(argument0)-1;i++)
{
	argument0[i] = -1;
}

for(j=0;j<=18;j++)
{
	with(instance_find(obj_AfficheMorse1,j)){
		sprite_index = spr_empty;
	}
}
show_debug_message(argument0);
return argument0;