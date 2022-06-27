/// @desc health up

if (global.playerHP < global.playerHPMax)
{
	audio_play_sound(snPop,0,false);
	global.playerHP += 20;
	instance_destroy();
}
if (global.playerHP > global.playerHPMax) global.playerHP = global.playerHPMax