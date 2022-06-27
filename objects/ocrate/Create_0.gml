/// @desc create wall

mywall = instance_create_depth(x,y,layer,oWall);
with (mywall)
{
	image_xscale = other.sprite_width / sprite_width;
	image_yscale = other.sprite_height / sprite_index;
}