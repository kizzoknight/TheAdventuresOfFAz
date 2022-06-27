/// @desc equip gun
global.hasgun = true;
instance_create_layer(oPlayer.x,oPlayer.y,"Gun",oGun);
audio_play_sound(snReload,0,false);
instance_destroy();
