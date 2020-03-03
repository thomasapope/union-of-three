/// sc_player_parts()
head = instance_create(x,y,ob_head);
    head.creator = id;
arm = instance_create(x,y,ob_arm);
    arm.creator = id;
    arm.shot_delay = 6; // Time between shots
    arm.vari = 1; // The Level of inaccuracy in shots. Higher is less accurate
