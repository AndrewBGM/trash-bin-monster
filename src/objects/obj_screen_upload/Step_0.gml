percent = min(percent + 0.001, 1.0);

if (percent >= 1.0 && alarm[0] == -1) {
    alarm[0] = 1 * room_speed;
}