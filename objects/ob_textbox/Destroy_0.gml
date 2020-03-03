/// @description  Textbox Cleanup
ds_queue_destroy(q_name);
ds_queue_destroy(q_text);
ds_queue_destroy(q_namesize);
ds_queue_destroy(q_cicount);
ds_queue_destroy(q_ciid[0]);
ds_queue_destroy(q_cixto[0]);
ds_queue_destroy(q_ciflip[0]);
ds_queue_destroy(q_cichange[0]);
ds_queue_destroy(q_ciid[1]);
ds_queue_destroy(q_cixto[1]);
ds_queue_destroy(q_ciflip[1]);
ds_queue_destroy(q_cichange[1]);

// Let the player move again
if (instance_exists(ob_player)) {
  ob_player.state = player_state_move;
}

