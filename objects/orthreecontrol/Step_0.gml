//pciked up keys
keysThisRoom = instance_number(oKey);
pickedupKeys = maxKeys - keysThisRoom;
//show_debug_message(pickedupKeys);
if (instance_exists(oPDead)) && (isDead <= 1)
{
	isDead = 1;
}

if (isDead == 1)
{
	isDead = 2;
}
if (isDead == 2)
{
	global.keys = global.keys - pickedupKeys;
	isDead = 3;
}