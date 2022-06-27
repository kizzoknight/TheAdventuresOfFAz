/// @desc equip gun
audio_play_sound(snReload,0,false);
global.ammo = global.ammo + 20;
instance_destroy();