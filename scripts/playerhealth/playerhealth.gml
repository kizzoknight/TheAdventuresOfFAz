function playerhealth()
{
	global.playerHP -= argument0;
	show_debug_message(global.playerHP)
	if (global.playerHP <= 0)
	{
		killplayer();
	}
		
}