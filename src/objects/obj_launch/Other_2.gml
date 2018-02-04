#macro CONSOLE_TEXT_COLOR make_color_rgb(0, 68, 44)

global.console_audio_enabled = true;
global.console_tick_rate     = 1;
global.console_time_hour     = 10;
global.console_time_minute   = 0;

global.monster_name       = "DANIEL";
global.monster_hunger     = 0;
global.monster_happiness  = 0;
global.monster_discipline = 0;
global.monster_sentience  = 0;

instance_create_layer(0, 0, layer, obj_core_input);
instance_create_layer(0, 0, layer, obj_core_music);

room_goto(rm_screen_start);