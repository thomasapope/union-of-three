///get_controls()
if (control == 0) { // Keyboard and Mouse control
    key_right = keyboard_check(ord('D'));
    key_left = keyboard_check(ord('A'));
    xaxis = (key_right - key_left);
    
    key_jump = keyboard_check(ord('W'));
    key_jump_press = keyboard_check_pressed(ord('W'));
    key_jump_release = keyboard_check_released(ord('W'));
    
    key_down = keyboard_check(ord('S'));
    key_down_press = keyboard_check_pressed(ord('S'));
    
    key_primary = mouse_check_button(mb_left);
    key_primary_press = mouse_check_button_pressed(mb_left);
    key_secondary = mouse_check_button(mb_right);
    key_secondary_press = mouse_check_button_pressed(mb_right);
    
    key_activate = keyboard_check_pressed(vk_space);
}
if (control == 1) { // Gamepad Control
    //gamepad_set_axis_deadzone(0, .5);
    //gamepad_set_button_threshold(0, 0.1);    // Set the "threshold" for the triggers
    xaxis = gamepad_axis_value(pad_num, gp_axislh);
    
    key_jump = gamepad_button_check(pad_num, gp_shoulderlb);
    key_jump_press = gamepad_button_check_pressed(pad_num, gp_shoulderlb);
    key_jump_release = gamepad_button_check_released(pad_num, gp_shoulderlb);
    
    key_primary = gamepad_button_check(pad_num, gp_shoulderrb);
    key_primary_press = gamepad_button_check_pressed(pad_num, gp_shoulderrb);
    key_secondary = gamepad_button_check(pad_num, gp_shoulderr);
    key_secondary_press = gamepad_button_check_pressed(pad_num, gp_shoulderr);
    
    key_down = gamepad_button_check(pad_num, gp_face3);
    key_down_press = gamepad_button_check_pressed(pad_num, gp_face3);
    key_activate = gamepad_button_check_pressed(pad_num, gp_face3);
} 
