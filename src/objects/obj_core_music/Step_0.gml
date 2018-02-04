if (!global.console_audio_enabled) exit;

var _intro_length = 17.615,
    _song_length  = 101.284,
    _loop_length  = _song_length - _intro_length;

if (audio_sound_get_track_position(music) > _song_length) {
    audio_sound_set_track_position(music, audio_sound_get_track_position(music) - _loop_length);
}

/*
if (fadein_music != undefined) {
    fadein_amount += 0.05;
    
    audio_sound_set_track_position(fadein_music, audio_sound_get_track_position(fadein_music) - _loop_length);
    
    audio_sound_gain(music, 1 - fadein_amount, 0);
    audio_sound_gain(fadein_music, fadein_amount, 0);
    
    if (fadein_amount >= 1) {
        music = fadein_music;
        fadein_amount = 0;
        fadein_music = undefined;
    }
}
*/