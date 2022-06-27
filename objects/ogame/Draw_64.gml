/// @desc Score
if (room != rMenu) && (instance_exists(oPlayer)) && (global.kills > 0)
{
	killtextscale = max(killtextscale * 0.95, 1);
	DrawSetText(c_black,fMenu,fa_right,fa_top);
	draw_text_transformed(RES_W-8, 12,string(global.kills) + " Kills", killtextscale, killtextscale,0);
	draw_set_color(c_white);
	draw_text_transformed(RES_W-10, 10,string(global.kills) + " Kills", killtextscale, killtextscale,0);
}

if (room != rMenu) && (room !=rEnding)
{

	draw_sprite(sHealthbar_bg,0,healthbar_x,healthbar_y);
	draw_sprite_stretched(sHealthbar,0,healthbar_x,healthbar_y,(global.playerHP/global.playerHPMax)*healthbar_width,healthbar_hight);
	draw_sprite(sHealthbar_border,0,healthbar_x,healthbar_y);
	//draw_text(RES_W/2,RES_H/2,global.ammo);
	//draw_text(RES_W/3,RES_H/3,global.playerHP);
	
	if(global.hasgun)
	{
		DrawSetText(c_black, fSign, healthbar_x+40, healthbar_y+50)
		draw_text(healthbar_x+13, healthbar_y+15, global.ammo);
		draw_sprite(sPotato,0,healthbar_x,healthbar_y+33);
	}
	
	DrawSetText(c_black, fSign, healthbar_x+40, healthbar_y+70)
	draw_text(healthbar_x+17, healthbar_y+45, global.keys);
	draw_sprite(sKey,0,healthbar_x,healthbar_y+63);
	
	DrawSetText(c_black, fSign, healthbar_x+40, healthbar_y+90)
	draw_text(healthbar_x+17, healthbar_y+75, global.currency);
	draw_sprite(sCoin,0,healthbar_x,healthbar_y+93);
}