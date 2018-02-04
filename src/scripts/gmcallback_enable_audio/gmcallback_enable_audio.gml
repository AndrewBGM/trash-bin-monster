global.console_audio_enabled = true;
with(obj_core_music) {
    if (!audio_is_playing(music)) {
        var _asset = asset_get_index("snd_theme" + string(theme + 1));
        music = audio_play_sound(_asset, 1, false);
    }
}