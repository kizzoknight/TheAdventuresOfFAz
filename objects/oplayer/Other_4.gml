/// @desc Auto Save

//Overwrite old save
if (file_exists(SAVEFILE)) file_delete(SAVEFILE);


//Create new save
var file;
file = file_text_open_write(SAVEFILE);
file_text_write_real(file,room);
file_text_write_real(file,global.kills);
file_text_write_real(file,global.hasgun);
file_text_write_real(file,global.playerHP);
file_text_write_real(file,global.ammo);
file_text_write_real(file,global.totalweapons);
file_text_write_real(file,global.hasredgun);
file_text_write_real(file,global.hasgreengun);
file_text_write_real(file,global.keys);
file_text_write_real(file,global.currency);
file_text_close(file);

