hittime--;


if (global.hasgun) && (hittime <= 0)
{
	playerhealth(5);
	hittime = 6;
	ScreenShake(3,60);
	flash = 3;
	repeat(5)
	{
	with (instance_create_layer(x,y,"Bullet",oBlood))
	{
		image_xscale = 2;
		image_yscale = 2;
		vsp = 0;
		}
	}
	

} 