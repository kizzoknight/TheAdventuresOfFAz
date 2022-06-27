/// @desc Boss health bar
if (room != rMenu) && (room != rEnding) && (instance_exists(oBoss))
{
	draw_sprite(sHealthbarboss_bg,0,healthbar_x,healthbar_y);
	draw_sprite_stretched(sHealthbarboss,0,healthbar_x,healthbar_y,(hp/maxhp)*healthbar_width,healthbar_hight);
	draw_sprite(sHealthbarboss_border,0,healthbar_x,healthbar_y);
}