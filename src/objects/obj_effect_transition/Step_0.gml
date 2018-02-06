switch(fade_state) {
    case 0:
        fade_alpha = min(fade_alpha + fade_speed, 1.0);
        
        if (fade_alpha >= 1.0 && !is_sleeping) {
            fade_state = 1;
            if (target_room != undefined) {
                room_goto(target_room);
            }
        } else if (fade_alpha >= 1.0 && alarm[0] == -1) {
            alarm[0] = 1.5 * room_speed;
        }
        
        break;

    case 1:
        fade_alpha = max(fade_alpha - fade_speed, 0.0);
        
        if (fade_alpha <= 0.0) {
            instance_destroy();
        }
    
        break;
}