global.textOnScreen = instance_number(oNPC)
//show_debug_message(global.textOnScreen);

if (textType == 1) && (keyboard_check_pressed(ord("1")))
{
	textType = 0;
	with (instance_create_layer(x,bbox_bottom,"Enemy",oAmmoCrate))
	{
		
	}
}
if (textType == 1) && (keyboard_check_pressed(ord("2")))
{
	textType = 0;
	with (instance_create_layer(x,bbox_bottom,"Enemy",oHeart))
	{
		
	}
}
