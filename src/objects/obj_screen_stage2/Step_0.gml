if (instance_exists(obj_effect_transition) || instance_exists(obj_effect_textbox)) exit;

global.monster_hunger    = max(0, global.monster_hunger - hunger_decay_rate);
global.monster_happiness = max(0, global.monster_happiness - happiness_decay_rate);

if (current_speech == undefined) {
    if (global.monster_hunger <= hunger_threshold) {
        current_speech = choose("png", "txt", "pdf");
    } else if (global.monster_happiness <= happiness_threshold) {
        current_speech = ":(";
    }
} else if (global.monster_hunger > hunger_threshold && global.monster_happiness > happiness_threshold) {
     current_speech = undefined;
}

if (global.console_time_hour >= 20) {
    global.console_time_hour   = 10;
    global.console_time_minute = 0;

    var _target_room = undefined;
    
    if (global.monster_sentience >= 1.0) {
        _target_room = rm_screen_stage3;
    }
    
    room_goto_transition(_target_room, true);
}

if (global.monster_hunger <= 0 || global.monster_happiness <= 0) {
    audio_stop_all();
    room_goto_transition(rm_screen_death);
}

// DEBUG
if keyboard_check_pressed(ord("O")) {
    gmcallback_filedrop("{\"name\": \"blah." + string(current_speech) + "\", \"size\": " + string(irandom(1024)) + ", \"type\": \"" + string(current_speech) + "\", \"createdToday\": false}");
}