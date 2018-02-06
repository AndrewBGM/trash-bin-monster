if (target_room == rm_screen_stage_final) {
	draw_sprite_stretched(
		choose(spr_glitch_1, spr_glitch_2, spr_glitch_3),
		-1,
		0,
		0,
		room_width,
		room_height
	);

	exit;
}

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