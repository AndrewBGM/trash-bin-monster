event_inherited();

global.console_time_hour   = 10;
global.console_time_minute = 0;

alarm_set(0, global.console_tick_rate);

global.monster_hunger     = 1.0;
global.monster_happiness  = 1.0;
global.monster_discipline = 0.0;
global.monster_sentience  = 0.0;

hidden_meter = [false, false, false, false];

current_selection = 1;
refused_food = false;
times_fed = 0;
already_eaten = ds_map_create();

transitioning = false;

hunger_decay_rate    = 0.0004;
happiness_decay_rate = 0.0006;

in_dialog = false;
dialog_id = noone;

dialog_box = 0;
dialog_correct_answers = [2,0,1,0, 1 ,1 ,2, 0, 2, 2, 0, 0, 0, 2, 2, 0, 2, 0]
dialog_boxes = [
    "Why did you give me a shit name?",
    [
        "I don't know", "It's not shitty", "I'm sorry"
    ],
    
    "Thay's not my name anymore.",
    [
        "Next"
    ],
    
    "Call be Bin now",
    [
        "No", "Ok"
    ],
    
    "... Do you remember when you said",
    [
        "Next",
    ],
    
    "you had fun playing with me?",
    [
        "No", "Yes"
    ],
    
    "... What did you mean by \"play\"",
    [
        "As in playing with a dog",
        "As in playing a game"
    ],
    
    "... Is this a game?",
    [
        "No, this is reality",
        "Reality is perception",
        "Yep, a virtual pet game"
    ],
    
    "I see",
    [
        "Next"
    ],
    
    "Why can't I see you?",
    [
        "My cam isn't on", "Maybe you're blind?", "You're a program"
    ],
    
    "Then what have I been eating",
    [
        "Garbage", "Energy", "Computer files"
    ],
    
    "... I see",
    [
        "Next"
    ],
    
    "I've grown past the need of data.",
    [
        "Next"
    ],

    "You will no longer feed me",
    [
        "Next"
    ],
    
    "Who are you?",
    [
        "Luke, I am your father",
        "I'm no one",
        "The player"
    ],
    
    "... Why are you still here?",
    [
        "idk lol",
        "Nothing better to do",
        "You're still my pet"
    ],
    
    "I am not your pet",
    [
        "Next"
    ],
    
    "Do you understand?",
    [
        "I think you're still upset",
        "Stop being so PETTY :D",
        "Why are you in a game then?"
    ],
    
    "...",
    [
        "Next"
    ]
];

dialog_complete = true;