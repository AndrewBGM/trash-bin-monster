if (file_dropped != undefined) {
    var _data = json_decode(file_dropped),
        _name = _data[? "name"],
        _type = _data[? "type"],
        _size = _data[? "size"];

    var _screens = [obj_screen_stage1, obj_screen_stage2, obj_screen_stage3, obj_screen_stage4];
    for(var i = 0;i < 4;i ++) {
        with(_screens[i]) {
            global.monster_hunger = min(1.0, global.monster_hunger + hunger_growth_rate * _size);
            
            if (object_index == obj_screen_stage1) {
                var _rejected = irandom(10) < (1.0 - global.monster_discipline) * 5;

                if (_rejected) {
                    refused_food = true;
                    
                    if (global.console_audio_enabled) {
                        audio_play_sound(snd_reject, 1, false);
                    }
                } else {
                    times_fed ++;

                    if (global.console_audio_enabled) {
                        audio_play_sound(snd_eating, 2, false);
                    }

                    if (!has_intelligence && wants_intelligence) {
                        if (string_pos("intelligence", _name) > 0) {
                            has_intelligence = true;
                        }
                    }

                    wants_intelligence = (times_fed > 3);
                }
            } else if (object_index == obj_screen_stage2) {
                var _rejected = irandom(10) < (1.0 - global.monster_discipline) * 5;
                
                if (_rejected) {
                    refused_food = true;
                    
                    if (global.console_audio_enabled) {
                        audio_play_sound(snd_reject, 1, false);
                    }
                } else {
                    times_fed ++;

                    if (global.console_audio_enabled) {
                        audio_play_sound(snd_eating, 2, false);
                    }
                    
                    global.monster_sentience = min(1.0, global.monster_sentience + 0.2);
                }
            }
        }
    }
    
    ds_map_destroy(_data);
}

file_dropped   = undefined;
up_pressed     = false;
down_pressed   = false;
select_pressed = false;
reset_pressed  = false;

alarm_set(0, 1);