/// @desc equip gun
global.hasgreengun = true;
global.totalweapons++;
audio_play_sound(snReload,0,false);
instance_destroy();
