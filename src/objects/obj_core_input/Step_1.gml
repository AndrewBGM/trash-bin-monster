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

up_pressed     = keyboard_check_pressed(vk_up);
down_pressed   = keyboard_check_pressed(vk_down);
select_pressed = keyboard_check_pressed(vk_space);
reset_pressed  = keyboard_check_pressed(vk_escape);