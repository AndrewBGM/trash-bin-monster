if keyboard_check_pressed(ord("O")) {
    var _fname = get_open_filename("Any files|*.*", "");
    
    if (_fname != "") {
        var _fh   = file_bin_open(_fname, 0),
            _size = file_bin_size(_fh),
            _name = filename_name(_fname),
            _ext  = filename_ext(_fname);

        file_bin_close(_fh);
        
        gmcallback_filedrop("{\"type\": \"" + string(_ext) + "\", \"name\": \"" + string(_name) + "\", \"size\": " + string(_size) + "}");
    }
}

file_dropped   = undefined;
up_pressed     = false;
down_pressed   = false;
select_pressed = false;
reset_pressed  = false;

if keyboard_check_pressed(vk_up) {
    gmcallback_up();
} else if keyboard_check_pressed(vk_down) {
    gmcallback_down();
} else if keyboard_check_pressed(ord("Z")) {
    gmcallback_select();
} else if keyboard_check_pressed(vk_escape) {
    gmcallback_reset_button();
}