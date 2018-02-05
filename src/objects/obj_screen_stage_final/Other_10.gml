if (button == "select") {
    if (dialog_chosen_branch != undefined && dialog_branch_index >= 0) {
        var _length = array_length_1d(dialog_branches[dialog_chosen_branch]);
        
        if (dialog_branch_index >= _length - 1) {
            room_goto_transition(rm_screen_upload);
        }
    }
    
    if (dialog_index >= 23) {
        if (dialog_chosen_branch != undefined) {
            dialog_branch_index ++;
        } else {
            dialog_branch_index = 0;
            dialog_chosen_branch = current_answer;
        }
    } else {
        dialog_index ++;
    }
} else {
    current_answer = !current_answer;
}