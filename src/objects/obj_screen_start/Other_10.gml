if (completed) exit;

if (button == "reset" || button == "filedrop") exit;

if (current_overlay == -1) {
    current_overlay = 0;
    layer_set_visible(title_layer, false);
        
    if (global.console_audio_enabled) {
        audio_play_sound(snd_select, 2, false);
    }
} else {
    current_overlay ++;
        
    if (global.console_audio_enabled) {
        audio_play_sound(snd_select, 2, false);
    }
        
    if (current_overlay >= overlay_count) {
        completed = true;
        room_goto_transition(rm_screen_time);
    }
}