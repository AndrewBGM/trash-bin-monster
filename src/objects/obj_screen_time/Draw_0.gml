draw_set_font(fnt_console);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(CONSOLE_TEXT_COLOR);

draw_text(15, 4, "TRASH BIN MONSTER");
draw_text(190, 4, "00:00");

draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_set_color(CONSOLE_TEXT_COLOR);


var _text = "";
if (hour <= 9) {
    _text += "0";
}

_text += string(hour) + ":";

if (minute <= 9) {
    _text += "0";
}

_text += string(minute);

draw_text(room_width / 2, room_height / 2, _text);

if (current_hover < 2) {
    draw_sprite(spr_time_arrows, 0, room_width / 2 + ((current_hover == 0) ? -10 : 10), room_height / 2);
}