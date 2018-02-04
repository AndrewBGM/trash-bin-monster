/// @description room_goto_transition
/// @param {real} room


var _room = argument[0];


with(instance_create_depth(0, 0, -15000, obj_effect_transition)) {
    target_room = _room;
}