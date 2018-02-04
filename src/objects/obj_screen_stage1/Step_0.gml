if (instance_exists(obj_effect_transition)) exit;

global.monster_hunger    = max(0, global.monster_hunger - hunger_decay_rate);
global.monster_happiness = max(0, global.monster_happiness - happiness_decay_rate);

current_speech = undefined;
if (global.monster_hunger <= hunger_threshold) {
    current_speech = 0;
} else if (global.monster_happiness <= happiness_threshold) {
    current_speech = 1;
}

/*
if (input_check(INPUT_BUTTON_UP) || input_check(INPUT_BUTTON_DOWN)) {
    current_selection = (current_selection == 1) ? 2 : 1;
    
    if (global.console_audio_enabled) {
        audio_play_sound(snd_cursor, 2, false);
    }
} else if (input_check(INPUT_BUTTON_SELECT)) {
    switch(current_selection) {
        case 1:
            global.monster_happiness = min(1.0, global.monster_happiness + happiness_growth_rate);
            
            if (global.console_audio_enabled) {
                audio_play_sound(snd_happy, 2, false);
            }
            
            break;

        case 2:
            global.monster_happiness = max(0.0, global.monster_discipline + happiness_growth_rate);
            
            if (global.console_audio_enabled) {
                audio_play_sound(snd_hitem, 2, false);
            }
            
            if (refused_food) {
                refused_food = false;
                global.monster_discipline += 0.2;
            }

            break;
    }
}
*/

if (global.console_time_hour >= 20) {
    global.console_time_hour   = 10;
    global.console_time_minute = 0;

    var _target_room = undefined;
    
    if (has_intelligence) {
        _target_room = rm_screen_stage2;
    }
    
    room_goto_transition(_target_room);
}