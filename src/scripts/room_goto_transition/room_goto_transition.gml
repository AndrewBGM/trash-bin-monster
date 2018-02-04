/// @description room_goto_transition
/// @param {real} room


var _room = argument[0];


with(instance_create_layer(0, 0, layer, obj_effect_transition)) {
    target_room = _room;
}