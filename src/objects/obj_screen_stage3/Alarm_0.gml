if (!instance_exists(obj_effect_transition) && !instance_exists(obj_effect_textbox)) {
    global.console_time_minute ++;
    if (global.console_time_minute >= 60) {
        global.console_time_hour ++;
        global.console_time_minute = 0;
    }

    if (global.console_time_hour >= 24) {
        global.console_time_hour   = 0;
        global.console_time_minute = 0;
    }
}

alarm_set(0, global.console_tick_rate);