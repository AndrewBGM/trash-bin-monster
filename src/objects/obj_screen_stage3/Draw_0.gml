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

    if (current_selection == i) {
        draw_sprite(spr_overlay_selector, current_time / 100, (_seg / 2 + _seg * i), room_height / 2 + 64);
    }

    draw_sprite(spr_overlay_meters_base, i, (_seg / 2 + _seg * i), room_height / 2 + 64);
    draw_sprite_part(spr_overlay_meters, i, 0, _top, 34, 32,_x, _y);
}

// Draw monster
var _x   = room_width / 2,
    _y   = room_height / 2,
    _img = 8 + (current_time / 100) % 4;

draw_sprite(spr_monster, _img, _x, _y);

// Draw speech bubble
if (has_been_scolded) {
    var _w = 100,
        _h = 20;

    draw_set_font(fnt_console);

    draw_set_halign(fa_center);
    draw_set_valign(fa_center);

    draw_speech_bubble(_x + 16, _y - 46, _w, _h);
    draw_set_color(CONSOLE_TEXT_COLOR);
    
    draw_text(_x + 17 + _w / 2, _y - 47 + _h / 2, "Let me grow!");
} else if (alarm[1] != -1) {
    var _w = 100,
        _h = 20;

    draw_set_font(fnt_console);

    draw_set_halign(fa_center);
    draw_set_valign(fa_center);

    draw_speech_bubble(_x + 16, _y - 46, _w, _h);
    draw_set_color(CONSOLE_TEXT_COLOR);
    
    draw_text(_x + 17 + _w / 2, _y - 47 + _h / 2, "Goodbye");
} else if (wants_to_be_smarter) {
    var _w = 100,
        _h = 20;

    draw_set_font(fnt_console);

    draw_set_halign(fa_center);
    draw_set_valign(fa_center);

    draw_speech_bubble(_x + 16, _y - 46, _w, _h);
    draw_set_color(CONSOLE_TEXT_COLOR);
    
    draw_text(_x + 17 + _w / 2, _y - 47 + _h / 2, "...");
} else if (craving_intelligence) {
    if (has_been_scolded) {
        var _w = 120,
            _h = 32;

        draw_set_font(fnt_console);

        draw_set_halign(fa_center);
        draw_set_valign(fa_center);

        draw_speech_bubble(_x + 8, _y - 50, _w, _h);
        draw_set_color(CONSOLE_TEXT_COLOR);
    
        draw_text(_x + 13 + _w / 2, _y - 52 + _h / 2, "Let me grow!");
        if (wants_to_be_smarter == false) {
            wants_to_be_smarter = true;
        }
    } else {
        var _w = 100,
            _h = 20;

        draw_set_font(fnt_console);

        draw_set_halign(fa_center);
        draw_set_valign(fa_center);

        draw_speech_bubble(_x + 16, _y - 46, _w, _h);
        draw_set_color(CONSOLE_TEXT_COLOR);
    
        draw_text(_x + 17 + _w / 2, _y - 47 + _h / 2, "iq.txt");
    }
} else if (global.monster_sentience >= 0.9 && global.monster_hunger >= 0.9) {
    var _w = 84,
        _h = 20;

    draw_set_font(fnt_console);

    draw_set_halign(fa_center);
    draw_set_valign(fa_center);

    draw_speech_bubble(_x + 16, _y - 46, _w, _h);
    draw_set_color(CONSOLE_TEXT_COLOR);

    draw_text(_x + 17 + _w / 2, _y - 47 + _h / 2, ":(");
} else if (current_speech != undefined || refused_food) {
    var _w = 84,
        _h = 20;

    draw_set_font(fnt_console);

    draw_set_halign(fa_center);
    draw_set_valign(fa_center);

    draw_speech_bubble(_x + 16, _y - 46, _w, _h);
    draw_set_color(CONSOLE_TEXT_COLOR);

    if (refused_food) {
        if (wants_to_be_smarter) {
            draw_text(_x + 17 + _w / 2, _y - 47 + _h / 2, "...");
        } else {
            draw_text(_x + 17 + _w / 2, _y - 47 + _h / 2, "Please stop");
        }
    } else {
        draw_text(_x + 17 + _w / 2, _y - 47 + _h / 2, current_speech);
    }
}

// Draw drag overlay
if (global.file_dragged) {
    draw_sprite(spr_overlay_drop, 0, 2, 2);
}