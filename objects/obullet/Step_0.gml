x += lengthdir_x(spd,direction);
y += lengthdir_y(spd,direction);

if (place_meeting(x,y,pShootable)) && (place_meeting(x,y,oEnemy))
{
	with (instance_place(x,y,pShootable))
	{
		hp = hp - global.bulletdmg;
		flash = 3;
		hitfrom = other.direction;
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
	instance_destroy();
}
else if (place_meeting(x,y,pShootable))
{
	with (instance_place(x,y,pShootable))
	{
		hp--;
		flash = 3;
		hitfrom = other.direction;
		
	}
	instance_change(oHitSpark,true);
}



if (place_meeting(x,y,oWall)) && (image_index != 0)
{
	while (place_meeting(x,y,oWall))
	{
		x -= lengthdir_x(1,direction);
		y -= lengthdir_y(1,direction);
		
	}
	spd = 0;
	instance_change(oHitSpark,true);
}
