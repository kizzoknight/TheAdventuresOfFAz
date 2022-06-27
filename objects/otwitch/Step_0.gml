twitch_auto_update_info();

playerLoc = oPlayer.x + irandom_range(-100,100);
//show_debug_message(string(floor(alarm[0]/room_speed)))

if (global.heardmessage == 1)
{
	global.heardmessage = 0;
	with (instance_create_layer(x,bbox_bottom,"Enemy",oEnemy))
	{
		
	}
}
if (global.heardmessage == 2)
{
	global.heardmessage = 0;
	instance_create_layer(irandom_range((RES_W/RES_W)+10,RES_W-10),bbox_bottom,"Enemy",oEnemy,
	{
			hasweapon : true
	});
}
if (global.heardmessage == 3)
{
	global.heardmessage = 0;
	instance_create_layer(playerLoc,oPlayer.y,"Player",oHeart);
}
if (global.heardmessage == 4)
{
	global.heardmessage = 0;
	instance_create_layer(playerLoc,oPlayer.y,"Player",oAmmoCrate);
}



