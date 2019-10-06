/// @desc bool ReadLetterOpti(tableLettre,tabReponse,Compteur)
/// @arg tableLettre
/// @arg tabReponse
/// @arg Compteur

a = argument1[argument2];
show_debug_message(argument2);
show_debug_message("SENT");
show_debug_message(argument0);
show_debug_message("COMPARE");
show_debug_message(a);

if(array_equals(argument0,a)){
	show_debug_message("letter correspond to response");
	obj_MorseSpaceBar.TabCourtLong = ResetTab(argument0);
	return true;
}
else{
	show_debug_message("letter DOES NOT correspond to response");
	obj_MorseSpaceBar.TabCourtLong = ResetTab(argument0);
	return false;
}