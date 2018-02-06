if (button == "select") {
    if (global.console_audio_enabled) {
        audio_play_sound(snd_select, 2, false);
    }

    current_hover++;
    if (current_hover > 1) {
        global.console_time_hour = hour;
        global.console_time_minute = minute;

        room_goto_transition(rm_screen_name);
    }
} else if (button == "up") {
    if (global.console_audio_enabled) {
        audio_play_sound(snd_cursor, 2, false);
    }

    switch(current_hover) {
        case 0:
            hour ++;
            
            if (hour >= 24) hour = 0;
            
            break;

        case 1:
            minute ++;
            
            if (minute >= 60) minute = 0;
            
            break;
    }
} else if (button == "down") {
    if (global.console_audio_enabled) {
        audio_play_sound(snd_cursor, 2, false);
    }

    switch(current_hover) {
        case 0:
            hour --;
            
            if (hour < 0) hour = 23;
            
            break;

        case 1:
            minute --;
            
            if (minute < 0) minute = 59;
            
            break;
    }
}