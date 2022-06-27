// init the api (so easy)
twitch_init("");


twitch_chat_connect("","","");

// find some streams
twitch_stream_get_info(""); // me!
global.heardmessage = 0;
global.heard = 0;
global.cooldown = 1;


