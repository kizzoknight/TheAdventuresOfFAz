

if (point_in_circle(oPlayer.x,oPlayer.y,x,y,64)) && (!instance_exists(oNPC)) && (spokento == false)
{
	textType = 1;
	spokento = true;
	with (instance_create_layer(x,y-64,layer,oNPC))
	{
		text = other.text;
		length = string_length(text);
	}
	
	with (oCamera)
	{
		follow = other.id;	
	}

}
else if (global.textOnScreen != 1) && (spokento == true)
{
	textType = 0;
	with (instance_create_layer(x,y-64,layer,oNPC))
	{
		text = "I have no more for you";
		length = string_length(text);
	}
	
	with (oCamera)
	{
		follow = other.id;	
	}

}