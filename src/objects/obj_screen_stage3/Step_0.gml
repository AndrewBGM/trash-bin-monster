if (dialog_id != noone) {
    
    exit;
}

if (instance_exists(obj_effect_transition) || instance_exists(obj_effect_textbox)) exit;

global.monster_hunger    = max(0, global.monster_hunger - hunger_decay_rate);
global.monster_happiness = max(0, global.monster_happiness - happiness_decay_rate);

if (global.monster_hunger <= 0.1 && global.monster_happiness <= 0.1 && alarm[1] == -1 && has_been_pet) {
    current_speech = "I'm going to sleep now";
    alarm[1] = 2 * room_speed;
}

if (current_speech == undefined) {
    if (global.monster_hunger <= hunger_threshold) {
        current_speech = choose("beach.png", "doc.txt", "cookies.pdf");
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
    
    room_goto_transition(_target_room, true);
}

if ((global.monster_hunger <= 0 || global.monster_happiness <= 0) && !has_talked) {
    audio_stop_all();
    room_goto_transition(rm_screen_death);
}