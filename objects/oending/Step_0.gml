//move player towards centre
layer_x("TitleAssets", min(layer_get_x("TitleAssets")+1,RES_W * 0.5 -32));

//progress text
letters = letters+spd;

text = string_copy(endtext[currentline],1,floor(letters));

//next line
if (letters >= length+40)
{
	if (currentline+1 == array_length_1d(endtext))
	{
		SlideTransition(TRANS_MODE.RESTART);
	}
	else
	{
		currentline++;
		letters = 0;
		length = string_length(endtext[currentline]);	
	}
}

