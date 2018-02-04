// Draw pet name and timer

draw_set_font(fnt_console);

draw_set_halign(fa_left);
draw_set_valign(fa_top);

draw_set_color(CONSOLE_TEXT_COLOR);

draw_text(15, 4, global.monster_name);

var _time_string = "";

if (global.console_time_hour <= 9) {
    _time_string += "0";
}

_time_string += string(global.console_time_hour) + ":";

if (global.console_time_minute <= 9) {
    _time_string += "0";
}

_time_string += string(global.console_time_minute);

draw_text(190, 4, _time_string);

// Draw meters

var _seg      = room_width / 4,
    _mappings = [global.monster_hunger, global.monster_happiness, global.monster_discipline, global.monster_sentience];

for(var i = 0;i < 4;i ++) {
    var _top = floor(32 - (32 * _mappings[i])),
        _x   = (_seg / 2 + _seg * i) - sprite_get_xoffset(spr_overlay_meters),
        _y   = (room_height / 2 + 64) + _top - sprite_get_yoffset(spr_overlay_meters);

    draw_sprite(spr_overlay_meters_base, i, (_seg / 2 + _seg * i), room_height / 2 + 64);
    draw_sprite_part(spr_overlay_meters, i, 0, _top, 34, 32,_x, _y);
}

// Draw monster
draw_sprite(spr_monster, 2, room_width / 2, room_height / 2);