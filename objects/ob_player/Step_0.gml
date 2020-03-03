// Call Parent Event
event_inherited();
if (state == player_state_move) 
    enable_movement_platform_sprites(sp_player, sp_player, sp_player_jump, .25);
if (state == player_state_push)
    enable_movement_platform_sprites(sp_pushing, sp_pushing, sp_player_jump, .25);

