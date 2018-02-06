event_inherited();

// global.console_time_hour   = 10;
// global.console_time_minute = 0;

alarm_set(0, global.console_tick_rate);

global.monster_hunger     = 1.0;
global.monster_happiness  = 1.0;
global.monster_discipline = 0.0;
global.monster_sentience  = 0.0;

current_selection = 1;

times_fed          = 0;
wants_intelligence = false;
has_intelligence   = false;

refused_food   = false;
current_speech = undefined;

hunger_decay_rate    = 0.0004;
happiness_decay_rate = 0.0006;

hunger_threshold    = 0.3;
happiness_threshold = 0.5;

hunger_growth_rate    = 1;
happiness_growth_rate = 0.1;

already_eaten = ds_map_create();