/// @descr Control Menu

//Item ease in
menu_x += (menu_x_target - menu_x) / menu_speed;

//keyboard Controls 
if (menu_control)
{
	if (keyboard_check_pressed(vk_up))
	{
		ScreenShake(2,4);
		menu_cursor++;
		if (menu_cursor >= menu_items) menu_cursor = 0;
	}
	if (keyboard_check_pressed(vk_down))
	{
		ScreenShake(2,4);
		menu_cursor--;
		if (menu_cursor < 0) menu_cursor = menu_items - 1;
	}
	
	if (keyboard_check_pressed(vk_enter))
	{
		audio_play_sound(sDeath,10,false);
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		ScreenShake(2,4);
		menu_control = false;
	}
	
	var mouse_y_gui = device_mouse_y_to_gui(0);
	if (mouse_y_gui < menu_y) && (mouse_y_gui > menu_top)
	{
		menu_cursor = (menu_y - mouse_y_gui) div (menu_itemheight * 1.5);
		if (mouse_check_button(mb_left))
		{
		audio_play_sound(sDeath,10,false);
		menu_x_target = gui_width + 200;
		menu_committed = menu_cursor;
		ScreenShake(2,4);
		menu_control = false;		
		}
	}
}

if (menu_x > gui_width+150) && (menu_committed != -1)
{
	switch (menu_committed)
	{
		case 3: SlideTransition(TRANS_MODE.GOTO,rTwitch); break;
		case 2: SlideTransition(TRANS_MODE.NEXT); break;
		case 1: 
		{
			if (!file_exists(SAVEFILE))
			{
				SlideTransition(TRANS_MODE.NEXT);
			}
			else
			{

				var file = file_text_open_read(SAVEFILE);
				var target = file_text_read_real(file);
				global.kills = file_text_read_real(file)
				global.hasgun = file_text_read_real(file);
				global.playerHP = file_text_read_real(file);
				global.ammo = file_text_read_real(file);
				global.totalweapons = file_text_read_real(file);
				global.hasredgun = file_text_read_real(file);
				global.hasgreengun = file_text_read_real(file);
				global.keys = file_text_read_real(file);
				global.currency = file_text_read_real(file)
				file_text_close(file);
				SlideTransition(TRANS_MODE.GOTO,target);				
			}
		}
		break;
		case 0: game_end(); break;
	}
}