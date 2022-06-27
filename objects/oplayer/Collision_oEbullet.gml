playerhealth(10);
with (other) instance_destroy();
flash = 3;
ScreenShake(3,60);
repeat(5)
with (instance_create_layer(x,y,"Bullet",oBlood))
{
	image_xscale = 2;
	image_yscale = 2;
	vsp = 0;
	
}

