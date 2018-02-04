draw_set_font(fnt_console);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(CONSOLE_TEXT_COLOR);

draw_text(15, 4, "TRASH BIN MONSTER");
draw_text(190, 4, "00:00");

if (current_overlay >= 0) {
    draw_sprite(spr_overlay_happiness + min(2, current_overlay), 0, room_width / 2, room_height / 2 + 32);
}