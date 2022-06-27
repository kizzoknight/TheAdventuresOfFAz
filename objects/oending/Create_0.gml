gunsprite = layer_sprite_get_id("TitleAssets","gGun");
if (global.hasgun == true) && (global.kills > 0)
{

	endtext[0] = "Well done dickhead you got " + string(global.kills) + " kills";
	endtext[1] = "You want a smooch or sommat?";
	endtext[2] = "Fuck off its done now";
	endtext[3] = "You got loads of spuds to cum in";
	endtext[4] = "Or put in the airfyer";
	endtext[5] = "Im literally not arsed fuck off";
	endtext[6] = "Will is dead and will never steal anyones spuds again";
	endtext[7] = "Unless......";
	
}
else
{
	layer_sprite_destroy(gunsprite);
	
	endtext[0] = "You fucking pussy";
	endtext[1] = "You didnt pickup the gun?";
	endtext[2] = "Will now has all the spuds for Shan to stick up his hoop";
	endtext[3] = "Now fuck off and try again dickhead";
	endtext[4] = "You didnt expect this to be coded in did you?";
	endtext[5] = "Prick";
	endtext[7] = "The End";
}

spd = 0.5;
letters = 0;
currentline = 0;
length = string_length(endtext[currentline]);
text = "";