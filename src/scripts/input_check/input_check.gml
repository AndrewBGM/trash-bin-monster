/// @description input_check
/// @param {real} button
/// @return {boolean}


#macro INPUT_BUTTON_UP     0
#macro INPUT_BUTTON_DOWN   1
#macro INPUT_BUTTON_SELECT 2
#macro INPUT_BUTTON_RESET  3

var _button = argument[0];


with(obj_core_input) {
    var _mappings = [up_pressed, down_pressed, select_pressed, reset_pressed];
    
    return _mappings[_button];
}