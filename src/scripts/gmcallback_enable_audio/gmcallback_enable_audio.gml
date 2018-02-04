global.console_audio_enabled = true;
with(obj_core_music) {
    if (!audio_is_playing(music)) {
        music = audio_play_sound(snd_theme, 1, false);
    }
}