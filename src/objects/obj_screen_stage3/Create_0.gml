event_inherited();

global.console_time_hour   = 10;
global.console_time_minute = 0;

alarm_set(0, global.console_tick_rate);

global.monster_hunger     = 1.0;
global.monster_happiness  = 1.0;
// global.monster_discipline = 0.0;
global.monster_sentience  = 0.0;

has_been_scolded = false;
has_talked = false;
asked_for_petting = false;
has_been_pet      = false;

in_dialog = false;
dialog_id = noone;

dialog_box = 0;
dialog_correct_answers = [0, 2, 1, 2, 2, 2, 1];
dialog_boxes = [
    "I'd rather talk to you",
    [
        "Next"
    ],

    "What's your favorite color?",
    [
        "Red", "Blue", "4 shades of green"
    ],
    
    "Is it fun playing with me?",
    [
        "No", "Yes"
    ],
    
    "What's your favorite food?",
    [
        "Icecream", "Pizza", "Big files"
    ],
    
    "What's your spirit animal?",
    [
        "Dragon", "Dog", "Garbage",
    ],
    
    "Why are you using this OS?",
    [
        "I'm a hipster", "I'm not a pleb", "The Garbage bin is cuter"
    ],
    
    "I-is is cuter than me?",
    [
        "Yeah, I guess",
        "No way!"
    ]
];

current_selection = 1;
times_fed         = 0;

wants_to_be_smarter  = false;
craving_intelligence = false;

refused_food   = false;
current_speech = undefined;

hunger_decay_rate    = 0.0004;
happiness_decay_rate = 0.0006;

hunger_threshold    = 0.3;
happiness_threshold = 0.5;

hunger_growth_rate    = 1;
happiness_growth_rate = 0.1;

already_eaten = ds_map_create();