if (hasweapon)
{
	mygun = instance_create_layer(x,y,"gun",oEgun);
	with (mygun)
	{
		owner = other.id
	}
}
else mygun = noone;