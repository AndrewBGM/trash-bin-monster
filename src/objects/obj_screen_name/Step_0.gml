if keyboard_check_pressed(vk_backspace) {
    name = string_copy(name, 1, string_length(name) - 1);
} else if (keyboard_lastkey >= 32 && keyboard_lastkey <= 125 && keyboard_string != "") {
    name += chr(keyboard_lastkey);
    keyboard_string = "";
}