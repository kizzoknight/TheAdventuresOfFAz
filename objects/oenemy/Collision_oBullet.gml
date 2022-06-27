repeat(5)
{
	with (instance_create_layer(x,bbox_bottom,"Bullet",oBlood))
	{
		image_xscale = 2;
		image_yscale = 2;
		vsp = 0;
	}
}