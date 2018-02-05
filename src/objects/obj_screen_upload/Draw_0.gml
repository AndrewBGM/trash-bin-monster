draw_set_color(CONSOLE_TEXT_COLOR);
var _x = room_width / 2 - sprite_get_xoffset(spr_loadingbar) + 10,
    _y = room_height / 2 - 20 - sprite_get_yoffset(spr_loadingbar) + 24;

draw_rectangle(_x, _y, _x + (width * percent), _y + 11, false);

draw_sprite(spr_loadingbar, (percent >= 1.0), room_width / 2, room_height / 2);

draw_set_font(fnt_console);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_text(room_width / 2, room_height / 2 - 20, (percent >= 1.0) ? "COMPLETE" : "UPLOADING...");

// 10, 4