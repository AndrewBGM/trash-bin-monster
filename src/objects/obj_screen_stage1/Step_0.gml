if (instance_exists(obj_effect_transition) || instance_exists(obj_effect_textbox)) exit;

global.monster_hunger    = max(0, global.monster_hunger - hunger_decay_rate);
global.monster_happiness = max(0, global.monster_happiness - happiness_decay_rate);

current_speech = undefined;
if (global.monster_hunger <= hunger_threshold) {
    current_speech = 0;
} else if (global.monster_happiness <= happiness_threshold) {
    current_speech = 1;
}

if (global.console_time_hour >= 20) {
    global.console_time_hour   = 10;
    global.console_time_minute = 0;

    var _target_room = undefined;
    
    if (has_intelligence) {
        _target_room = rm_screen_stage2;
    }
    
    /*
    with(obj_core_music) {
        fadein_music = audio_play_sound(snd_theme2, 0, 0);
    }
    */

    room_goto_transition(_target_room);
}

// DEBUG
if keyboard_check_pressed(ord("O")) {
    gmcallback_filedrop("{\"name\": \"intelligence.txt\", \"size\": 1024, \"type\": \"txt\", \"createdToday\": false}");
}