if (theme == 0) {
    var _intro_length = 17.615,
        _song_length  = 101.284,
        _loop_length  = _song_length - _intro_length;

    if (audio_sound_get_track_position(music) > _song_length) {
        audio_sound_set_track_position(music, audio_sound_get_track_position(music) - _loop_length);
    }
}