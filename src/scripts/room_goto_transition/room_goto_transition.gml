/// @description room_goto_transition
/// @param {real} room
/// @param {boolean} sleeping?


var _room     = argument[0],
    _sleeping = (argument_count > 1) ? argument[1] : false;


with(instance_create_depth(0, 0, -15000, obj_effect_transition)) {
    is_sleeping = _sleeping;
    target_room = _room;
}