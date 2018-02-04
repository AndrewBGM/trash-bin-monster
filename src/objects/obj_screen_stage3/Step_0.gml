if (instance_exists(obj_effect_transition) || instance_exists(obj_effect_textbox)) exit;

global.monster_hunger    = max(0, global.monster_hunger - hunger_decay_rate);
global.monster_happiness = max(0, global.monster_happiness - happiness_decay_rate);

if (current_speech == undefined) {
    if (global.monster_hunger <= hunger_threshold) {
        current_speech = choose("beach.png", "document.txt", "cookies.pdf");
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
    
    room_goto_transition(_target_room);
}

// DEBUG
if keyboard_check_pressed(ord("O")) {
    gmcallback_filedrop("{\"name\": \"blah." + string(current_speech) + "\", \"size\": " + string(irandom(1024)) + ", \"type\": \"" + string(current_speech) + "\", \"createdToday\": false}");
}