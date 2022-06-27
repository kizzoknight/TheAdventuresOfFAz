function chatinput()
{
	if (string_pos("!hello", argument1) == 1) && (global.cooldown == 1)
	{
		global.heard = argument0;
		global.heardmessage = 1;
		global.cooldown = 0;
		alarm[0] = room_speed * 10;
	}
		if (string_pos("!gun", argument1) == 1) && (global.cooldown == 1)
	{
		global.heard = argument0;
		global.heardmessage = 2;
		global.cooldown = 0;
		alarm[0] = room_speed * 10;
	}
			if (string_pos("!health", argument1) == 1) && (global.cooldown == 1)
	{
		global.heard = argument0;
		global.heardmessage = 3;
		global.cooldown = 0;
		alarm[0] = room_speed * 10;
	}
			if (string_pos("!ammo", argument1) == 1) && (global.cooldown == 1)
	{
		global.heard = argument0;
		global.heardmessage = 4;
		global.cooldown = 0;
		alarm[0] = room_speed * 10;
	}
}