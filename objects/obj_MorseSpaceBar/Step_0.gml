 /// @description

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
		else{
			show_debug_message("SOS !");
		}
	}
	else{
		show_debug_message("Raté recommence !");
	}
		
}