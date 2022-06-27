spawnrate = string(floor(alarm[0]/room_speed))
if (spawnrate < 0)
{
	draw_text(RES_W/3,RES_H/3,"10");
}
else draw_text(RES_W/3,RES_H/3,spawnrate);
