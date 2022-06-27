// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function killplayer()
{
	audio_sound_pitch(sDeath,0.1);
	audio_play_sound(sDeath,10,false)
	with (oGun) instance_destroy();
	instance_change(oPDead,true);
	direction = point_direction(other.x,other.y,x,y);
	hsp = lengthdir_x(6,direction);
	vsp = lengthdir_y(4,direction)-2;
	if (sign(hsp) != 0) image_xscale = sign(hsp);
	global.kills -= global.killsthisroom;
	global.currency = global.currency - 5;
}