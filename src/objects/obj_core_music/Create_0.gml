theme = 0;

var _asset = asset_get_index("snd_theme" + string(theme + 1));
music = audio_play_sound(_asset, 1, false);

fadein_music  = undefined;
fadein_amount = 0;