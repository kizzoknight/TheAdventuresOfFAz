//gun placement
x = oPlayer.x+5;
y = oPlayer.y+8;

//gun aiming 
if (oPlayer.controller == 0)
{
	image_angle = point_direction(x,y,mouse_x,mouse_y);	
}
else
{
	var controllerh = gamepad_axis_value(0,gp_axisrh);
	var controllerv = gamepad_axis_value(0,gp_axisrv);
	if (abs(controllerh) > 0.2) || (abs(controllerv) > 0.2)
	{
		controllerangle = point_direction(0,0,controllerh,controllerv);
	}
	image_angle = controllerangle;
}

if (weaponslot == 1)
{
	sprite_index = sGun;
	global.bulletdmg = 1;
	firespeed = 20;
	spread = 1;

	
}
if (weaponslot == 2) && (global.hasredgun)
{
	sprite_index = sGunRed;
	global.bulletdmg = 2;
	firespeed = 15;
	if (global.ammo < 3) spread = global.ammo;
	else spread = 3;

}
if (weaponslot == 3) && (global.hasgreengun)
{
	sprite_index = sGunGreen;
	global.bulletdmg = 2;
	firespeed = 5;
	spread = 1;
}


//firing
firingdelay = firingdelay - 1;


if ((mouse_check_button(mb_left)) || gamepad_button_check(0,gp_shoulderrb)) && (firingdelay < 0) && (global.ammo > 0)
{
	recoil = 4;
	firingdelay = firespeed;
	ScreenShake(1,4);
	audio_play_sound(snShot,10,false);
	repeat(spread)
	with (instance_create_layer(x,y,"Bullet",oBullet))
	{
		global.ammo--;
		spd = 15;
		if (global.bulletdmg == 10)
		{
			direction = other.image_angle + random_range(-10,10);
		}
		else
		{
			direction = other.image_angle + random_range(-3,3);
		}
		image_angle = direction;
	}


	
}
recoil = max(0,recoil - 1);

x = x - lengthdir_x(recoil,image_angle);
y = y - lengthdir_y(recoil,image_angle);

if (image_angle > 90) && (image_angle < 270)
{
	image_yscale = -1;
}
else
{
	image_yscale = 1;
}