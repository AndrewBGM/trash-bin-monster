draw_set_color(c_black);
draw_set_alpha(fade_alpha);

draw_rectangle(0, 0, room_width, room_height, false);

draw_set_alpha(1.0);

if (fade_alpha >= 1.0 && is_sleeping) {
    draw_set_color(c_white);
    draw_set_alpha(1.0);

    draw_rectangle(0, 0, room_width, room_height, false);
    draw_sprite(spr_console_background_death, 0, 2, 2);
}