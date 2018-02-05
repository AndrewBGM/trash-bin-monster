if (button == "up" || button == "down") {
    current_selection = (current_selection == 1) ? 2 : 1;
    
    if (global.console_audio_enabled) {
        audio_play_sound(snd_cursor, 2, false);
    }
} else if (button == "select") {
    switch(current_selection) {
        case 1:
            global.monster_happiness = min(1.0, global.monster_happiness + happiness_growth_rate);
            
            repeat(8) {
                var _x = room_width / 2 + lengthdir_x(irandom(8), irandom(360)),
                    _y = room_height / 2 + lengthdir_y(irandom(8), irandom(360));

                with(instance_create_depth(_x, _y, -1500, obj_effect_heart)) {
                    speed = random(3);
                    direction = 45 + irandom(90);
                }
            }
            
            if (global.console_audio_enabled) {
                audio_play_sound(snd_happy, 2, false);
            }
            
            break;

        case 2:
            global.monster_happiness = max(0.0, global.monster_happiness - happiness_growth_rate);
            
            if (global.console_audio_enabled) {
                audio_play_sound(snd_hitem, 2, false);
            }
            
            if (refused_food) {
                refused_food = false;
                global.monster_discipline = min(global.monster_discipline + 0.2, 1.0);
            }

            break;
    }
} else if (button == "filedrop") {
    var _data = json_decode(filedrop);
    
    var _name          = _data[? "name"],
        _type          = _data[? "type"],
        _size          = _data[? "size"],
        _created_today = _data[? "createdToday"];

    var _rejected = random(1) < 0.5;
    
    var _already_size = already_eaten[? _name];
    if (_already_size != undefined) {
        _rejected = true;
    }
    
    if (_rejected) {
        refused_food = true;
        
        if (global.console_audio_enabled) {	
            audio_play_sound(snd_reject, 1, false);	
        }
    } else {
        times_fed ++;
        
        if (global.console_audio_enabled) {	
            audio_play_sound(snd_eating, 1, false);	
        }
        
        global.monster_hunger = min(1.0, global.monster_hunger + _size / 4096);
        
        if (!has_intelligence && wants_intelligence) {
            if (string_pos("intelligence.txt", _name) > 0) {
                has_intelligence = true;
            } else {
                already_eaten[? _name] = _size;
            }
        }
        
        wants_intelligence = (times_fed > 3);
    }
    
    ds_map_destroy(_data);
}