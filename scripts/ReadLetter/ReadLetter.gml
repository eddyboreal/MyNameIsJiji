/// @desc ReadLetter(tableLettre)
/// @arg tableLettre

if(argument0[0] == 0)
{
	if(argument0[1] == 0)
	{
		
		if(argument0[2] == 0)
		{
			if(argument0[3] == 0)
			{
				show_debug_message("NON");
			}
			else if (argument0[3] == 1)
			{
				show_debug_message("V");
			}
			else if (argument0[3] == noone)
			{
				show_debug_message("S");	
			}
		}
		else if (argument0[2] == 1)
		{
			if(argument0[3] == 0)
			{
				show_debug_message("F");
			}
			else if (argument0[3] == 1)
			{
				if(argument0[4] == 0)
				{
					if(argument0[5] == 0)
					{
						show_debug_message("?");
					}
					else
					{
						show_debug_message("NON");
					}
				}
			}
			else
			{
				show_debug_message("U");
			}
		}
		else
		{
			show_debug_message("I");
		}
	}
	else if (argument0[1] == 1)
	{
		if(argument0[2] == 0)
			{
				if(argument0[3] == 0)
				{
					show_debug_message("L");
				}
			}
			else if (argument0[2] == 1)
			{
				if(argument0[3] == 0)
				{
					show_debug_message("NON");
				}
				else if (argument0[3] == 1)
				{
					show_debug_message("J");
				}
			}
	}
	else
	{
		show_debug_message("E");
	}
}
else if (argument0[0] == 1)
{
	if(argument0[1] == 0)
	{
		if(argument0[2] == 0)
		{
			show_debug_message("D");
		}			
	}
	else if (argument0[1] == 1)
	{
		if(argument0[2] == 1)
		{
			show_debug_message("O");
		}			
	}
}

ResetTab(TabCourtLong);