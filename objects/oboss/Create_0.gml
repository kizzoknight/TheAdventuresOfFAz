maxhp = hp;
healthbar_width = 966;
healthbar_hight = 39;
healthbar_x = 275;
healthbar_y = RES_H-100;
if (hasweapon)
{
	mygun = instance_create_layer(x,y,"gun",oEgun);
	with (mygun)
	{
		owner = other.id
	}
}
else mygun = noone;