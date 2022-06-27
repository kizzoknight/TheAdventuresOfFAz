x = owner.x;
y = owner.y + 10;

image_xscale = abs(owner.image_xscale);
image_yscale = abs(owner.image_yscale);

if (instance_exists(oPlayer))
{
	if (oPlayer.x < x) image_yscale = -image_yscale;
	if (point_distance(oPlayer.x,oPlayer.y,x,y) < 600)
	{
		image_angle = point_direction(x,y,oPlayer.x,oPlayer.y);
		countdown--;
		if (countdown <= 0)
		{
			if (!collision_line(x,y,oPlayer.x,oPlayer.y,oWall,false,false))
			{
				countdown = countdownrate;
				audio_play_sound(snEShot,10,false);
				with (instance_create_layer(x,y,"Bullet",oEbullet))
				{
					image_xscale = other.image_xscale;
					image_yscale = other.image_yscale;
					spd = 10;
					direction = other.image_angle + random_range(-3,3);
					image_angle = direction;
					
				}
			}
		}
	}
}