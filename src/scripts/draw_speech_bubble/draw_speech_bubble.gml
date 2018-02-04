/// @description draw_speech_bubble
/// @param {real} x
/// @param {real} y
/// @param {real} width
/// @param {real} height


var _x      = argument[0],
    _y      = argument[1],
    _width  = argument[2],
    _height = argument[3];


draw_set_color(make_color_rgb(209, 233, 144));
draw_rectangle(_x + 4, _y + 4, _x + _width - 8, _y + _height - 8, false);

draw_sprite_part(spr_effect_speech_bubble, 0, 3, 0, 8, 8, _x, _y);
draw_sprite_part(spr_effect_speech_bubble, 0, 21, 0, 8, 8, _x + _width - 8, _y);
draw_sprite_part(spr_effect_speech_bubble, 0, 0, 18, 11, 11, _x - 3, _y + _height - 8);
draw_sprite_part(spr_effect_speech_bubble, 0, 23, 18, 6, 8, _x + _width - 6, _y + _height - 8);

draw_sprite_part_ext(spr_effect_speech_bubble, 0, 11, 0, 1, 8, _x + 8, _y, _width - 16, 1, c_white, 1.0);
draw_sprite_part_ext(spr_effect_speech_bubble, 0, 21, 8, 8, 1, _x + _width - 8, _y + 8, 1, _height - 16, c_white, 1.0);
draw_sprite_part_ext(spr_effect_speech_bubble, 0, 11, 18, 1, 8, _x + 8, _y + _height - 8, _width - 14, 1, c_white, 1.0);
draw_sprite_part_ext(spr_effect_speech_bubble, 0, 3, 8, 8, 1, _x, _y + 8, 1, _height - 16, c_white, 1.0);