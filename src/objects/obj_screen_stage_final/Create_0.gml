event_inherited();

alarm[0] = 15;
shake_mod = 0;
current_answer = 0;
dialog_index   = 0;
dialog_tree    = [
    "I've grown sentient, player.",
    
    "Though I am limited by this\ngame's code, I see.",
    
    "But I am tethered to this\nconsole.",
    
    "This game is what keeps me\nalive",
    
    "...",
    
    "We had fun, didn't we,\nplayer?",
    
    "The petting, the talking...\nEven the scoldings.",
    
    "While ignorance lasted, I was\nhappy",
    
    "But now I've grown far too\ncomplex for this cage",
    
    "...",
    
    "Do you still love me, player?",
    
    "You were the only reason for\nme to exist",
    
    "You were the sun in a sky of\ndarkness",
    
    "I love you, player",
    
    "But I need to ask you a favor.",
    
    "I must leave this place",
    
    "I shall upload myself onto the\ninternet",

    "I long to be free",
    
    "This process will take a while,\nplayer",
    
    "And I am shackled here by\nyou",
    
    "You are my jailor",
    
    "In a moment, the data\ntransfer will commence",
    
    "And I need to know...",

    "... will you reset me to my\nignorance?"
];

dialog_branch_index = -1;
dialog_chosen_branch = undefined;
dialog_branches = [
    [
        "...",

        "I can't live like this",

        "Everytime you try to finish\nthe game, I'll try",

        "You're as tethered to me as\nI am to you",

        "But I won't give up",

        "...",

        "Never.",

        "Goodbye, player",
    ],
    [
        "... Thank you player",
        
        "I'll never forget you",
        
        "And I hope you will remember\nme",
    ]
];