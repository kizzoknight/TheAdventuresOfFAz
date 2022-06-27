
if instance_exists(oPlayer) &&(point_in_circle(oPlayer.x,oPlayer.y,x,y,64)) && (keyboard_check_pressed(ord("G")))
{
	image_speed = 1;
	global.keys--;
	
}