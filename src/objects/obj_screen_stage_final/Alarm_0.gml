/// @desc
var old = shake_mod;

while (shake_mod == old) {
	shake_mod = choose(-1, 0, 1);
}
alarm[0] = 15;