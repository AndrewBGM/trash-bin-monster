draw_sprite(spr_overlay_final_hair, current_time / 64, 57, 2);

draw_set_font(fnt_final);

var _red  = make_color_rgb(170, 29, 76),
    _blue = make_color_rgb(40, 66, 227);

draw_set_halign(fa_center);
draw_set_valign(fa_center);


if (dialog_chosen_branch == undefined) {
    draw_set_color(_red);
    draw_text(room_width / 2 - 1 + shake_mod, 32, dialog_tree[dialog_index]);

    draw_set_color(_blue);
    draw_text(room_width / 2 + 1 + shake_mod, 32, dialog_tree[dialog_index]);

    draw_set_color(c_white);
    draw_text(room_width / 2 + shake_mod, 32, dialog_tree[dialog_index]);

    if (dialog_index == 10 || dialog_index == 23) {
        var _xoffset = 16;
    
        draw_set_color(_red);
        draw_text(room_width / 2 - room_width / 4 - _xoffset - 1, 128, "Yes");
    
        draw_set_color(_blue);
        draw_text(room_width / 2 - room_width / 4 - _xoffset + 1, 128, "Yes");
    
        draw_set_color(c_white);
        draw_text(room_width / 2 - room_width / 4 - _xoffset, 128, "Yes");
    
        draw_set_color(_red);
        draw_text(room_width / 2 + room_width / 4 + _xoffset - 1, 128, "No");
    
        draw_set_color(_blue);
        draw_text(room_width / 2 + room_width / 4 + _xoffset + 1, 128, "No");
    
        draw_set_color(c_white);
        draw_text(room_width / 2 + room_width / 4 + _xoffset, 128, "No");
        
        if (current_answer == 1) {
            draw_sprite(spr_overlay_selector_final, 0, room_width / 2 + room_width / 4 + _xoffset, 128);
        } else {
            draw_sprite(spr_overlay_selector_final, 0, room_width / 2 - room_width / 4 - _xoffset, 128);
        }
    }
} else {
    var _branch = dialog_branches[dialog_chosen_branch];

    if (dialog_branch_index < array_length_1d(_branch)) {
        draw_set_color(_red);
        draw_text(room_width / 2 - 1 + shake_mod, 32, _branch[dialog_branch_index]);

        draw_set_color(_blue);
        draw_text(room_width / 2 + 1 + shake_mod, 32, _branch[dialog_branch_index]);

        draw_set_color(c_white);
        draw_text((room_width / 2) + shake_mod, 32, _branch[dialog_branch_index]);
    }
}