#macro CONSOLE_TEXT_COLOR make_color_rgb(0, 68, 44)

global.file_dragged = false;
global.console_audio_enabled = true;
global.console_tick_rate     = 0.5 * room_speed;
global.console_time_hour     = 10;
global.console_time_minute   = 0;

global.monster_name       = "DANIEL";
global.monster_hunger     = 0;
global.monster_happiness  = 0;
global.monster_discipline = 0;
global.monster_sentience  = 0;

instance_create_depth(0, 0, -15000, obj_core_music);

room_goto(rm_screen_start);