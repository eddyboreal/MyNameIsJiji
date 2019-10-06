///  @desc SlideTransition(mode, targetroom)
/// @arg Mode sets transition mode entre next, restart et goto.
/// @arg Target sets target room quand on utilise goto mode.

with (obj_transition)
{
	mode = argument[0];
	if(argument_count > 1)
	{
		target = argument [1];	
	}
}
