// Get Player's Input
key_right = keyboard_check(ord('D'));
key_left = -keyboard_check(ord('A'));
key_jump = keyboard_check_pressed(ord('W'));
key_jump_held = keyboard_check(ord('W'));
key_down = keyboard_check(ord('S'));
key_up = keyboard_check(ord('W'));

move = key_left + key_right;
