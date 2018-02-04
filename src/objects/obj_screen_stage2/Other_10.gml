if (button == "up" || button == "down") {
    current_selection = (current_selection == 1) ? 2 : 1;
} else if (button == "select") {
    switch(current_selection) {
        case 1:
            global.monster_happiness = min(1.0, global.monster_happiness + happiness_growth_rate);
            
            break;

        case 2:
            global.monster_happiness = max(0.0, global.monster_discipline + happiness_growth_rate);
            
            if (refused_food) {
                refused_food = false;
                global.monster_discipline += 0.2;
            }

            break;
    }
}