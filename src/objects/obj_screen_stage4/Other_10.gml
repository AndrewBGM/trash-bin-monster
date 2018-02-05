if (in_dialog) {
    if (button == "up" || button == "down") {
        if (button == "up") {
            dialog_id.selection = dialog_id.selection - 1;
        } else {
            dialog_id.selection = dialog_id.selection + 1;
        }
        
        if (dialog_id.selection < 0) {
            dialog_id.selection = array_length_1d(dialog_id.answers) - 1;
        } else if (dialog_id.selection >= array_length_1d(dialog_id.answers)) {
            dialog_id.selection = 0;
        }
    
        if (global.console_audio_enabled) {
            audio_play_sound(snd_cursor, 2, false);
        }
    } else if (button == "select") {
        var _answer_count = array_length_1d(dialog_correct_answers);
        
        if (dialog_box < _answer_count) {
            if (dialog_id.selection != dialog_correct_answers[dialog_box]) {
                // dialog_box = 0;
                // in_dialog  = false;
                
                dialog_id.answers[dialog_id.selection] = "";
                
                // instance_destroy(dialog_id);
                // dialog_id = noone;
            } else {
                // global.monster_happiness += 0.1;
                
                if (dialog_box == _answer_count - 1) {
                    // craving_intelligence = true;
                    
                    //dialog_box = 0;
                    //in_dialog = false;

                    instance_destroy(dialog_id);
                    dialog_id = noone;
                    
                    room_goto_transition(rm_screen_stage_final);
                } else {
                    dialog_box ++;

                    dialog_id.selection = 0;
                    dialog_id.question  = dialog_boxes[dialog_box * 2];
                    dialog_id.answers = dialog_boxes[dialog_box * 2 + 1];
                }
            }
        }
    }

    exit;
}

if (button == "up" || button == "down") {
    current_selection = (current_selection == 1) ? 2 : 1;
    
    if (global.console_audio_enabled) {
        audio_play_sound(snd_cursor, 2, false);
    }
} else if (button == "select") {
    switch(current_selection) {
        case 1:
            in_dialog = true;
            dialog_id = instance_create_depth(0, 0, -15000, obj_effect_textbox);
                
            dialog_id.question = dialog_boxes[0];
            dialog_id.answers = dialog_boxes[1];
            
            break;

        case 2:
            hidden_meter[2] = true;

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
    if (_already_size == _size) {
        _rejected = true;
    }
    
    if (_rejected) {
        refused_food = true;
        
        if (global.console_audio_enabled) {	
            audio_play_sound(snd_reject, 1, false);	
        }
    } else {
        var _rejected = false;
        
        times_fed ++;
        
        if (global.console_audio_enabled) {	
            audio_play_sound(snd_eating, 1, false);	
        }
    }
    
    ds_map_destroy(_data);
}

if (hidden_meter[2] == true) {
    current_selection = 1;
}