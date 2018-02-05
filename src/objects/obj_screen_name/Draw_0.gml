draw_set_font(fnt_console);

draw_set_halign(fa_center);
draw_set_valign(fa_center);

draw_set_color(CONSOLE_TEXT_COLOR);

draw_sprite(spr_name_box, 0, room_width / 2, room_height / 2);
draw_text(room_width / 2, room_height / 2, name);