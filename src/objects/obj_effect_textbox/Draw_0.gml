var _line_height = 12,
    _box_x       = 6,
    _box_y       = 20,
    _box_height  = undefined;

draw_sprite(spr_overlay_textbox_bg, 0, 4, 18);
draw_sprite(spr_effect_textbox_edges, 0, _box_x, _box_y);

var _answer_count = array_length_1d(answers);

draw_set_font(fnt_console);
draw_set_color(make_color_rgb(0, 68, 44));

draw_set_valign(fa_top);
draw_set_halign(fa_left);

draw_text(_box_x + 12, _box_y + 4, question);
        
for(var i = 0;i < _answer_count;i ++) {
    if (selection == i) {
        var _left = _box_x + 8,
            _top  = _box_y + 4 + _line_height + 4 + i * _line_height;

        draw_rectangle(_left, _top, _left + 208, _top + _line_height, true);
    }
            
    draw_text(_box_x + 12, _box_y + 4 + _line_height + 4 + i * _line_height, answers[i]);
}

_box_height = _line_height * (_answer_count + 1) - 2;

draw_sprite_ext(spr_effect_textbox_center, 0, _box_x, _box_y + 8, 1, _box_height, 0, c_white, 1.0);
draw_sprite(spr_effect_textbox_edges, 1, _box_x, _box_y + 8 + _box_height);