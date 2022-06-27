/// @desc gun change
if (global.hasgun)
{
	weaponslot++;
	global.lastweapon++;
	if (weaponslot > 3)
	{
		weaponslot = 1;
	}
	if (weaponslot > global.totalweapons) weaponslot = 1;
	if (global.lastweapon > global.totalweapons) global.lastweapon = 1;
}
//show_debug_message(global.lastweapon);
