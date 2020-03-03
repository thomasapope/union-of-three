push_objects = ds_list_create();
ds_list_add(push_objects, ob_player);
ds_list_add(push_objects, ob_box);
move_solid_entity(push_objects);

