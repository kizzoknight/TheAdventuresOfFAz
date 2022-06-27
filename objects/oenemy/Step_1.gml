if (hp <= 0)
{
	with (instance_create_layer(x,y,layer,enemyDeath))
	{
		direction = other.hitfrom
		hsp = lengthdir_x(3,direction);
		vsp = lengthdir_y(3, direction)-4;
		if (sign(hsp) != 0) image_xscale = sign(hsp) * other.size;
		image_yscale = other.size;
		audio_play_sound(sDeath,10,false);
		
	}
	with (mygun) instance_destroy();
	if (instance_exists(oPlayer))
	{
		global.kills++;
		global.killsthisroom++;
		global.currency = global.currency + cash;
		with (oGame) killtextscale = 2;
	}
	instance_destroy();
}