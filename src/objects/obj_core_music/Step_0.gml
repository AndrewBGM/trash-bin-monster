if (!global.console_audio_enabled) exit;

if (room <= rm_screen_stage1 && !audio_is_playing(snd_theme1)) {
    var _pos = audio_sound_get_track_position(music);

    audio_stop_sound(music);
    music = audio_play_sound(snd_theme1, 0, false);
    audio_sound_set_track_position(music, _pos);
} else if (room == rm_screen_stage2 && !audio_is_playing(snd_theme2)) {
    var _pos = audio_sound_get_track_position(music);

    audio_stop_sound(music);
    music = audio_play_sound(snd_theme2, 0, false);
    audio_sound_set_track_position(music, _pos);
} else if (room == rm_screen_stage3 && !audio_is_playing(snd_theme3)) {
    var _pos = audio_sound_get_track_position(music);

    audio_stop_sound(music);
    music = audio_play_sound(snd_theme3, 0, false);
    audio_sound_set_track_position(music, _pos);
} else if (room == rm_screen_stage4 && !audio_is_playing(snd_theme4)) {
    var _pos = audio_sound_get_track_position(music);

    audio_stop_sound(music);
    music = audio_play_sound(snd_theme4, 0, false);
    audio_sound_set_track_position(music, _pos);
}

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