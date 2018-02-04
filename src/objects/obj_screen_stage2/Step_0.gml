if (instance_exists(obj_effect_transition)) exit;

global.monster_hunger    = max(0, global.monster_hunger - hunger_decay_rate);
global.monster_happiness = max(0, global.monster_happiness - happiness_decay_rate);

if (current_speech == undefined) {
    if (global.monster_hunger <= hunger_threshold) {
        current_speech = choose("image", "txt", "pdf");
    } else if (global.monster_happiness <= happiness_threshold) {
        current_speech = "<3";
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
    
    room_goto_transition(_target_room);
}