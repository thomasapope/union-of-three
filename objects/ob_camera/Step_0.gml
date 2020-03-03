// Move the camera according to its current control setting
//var xTo, yTo;

if (instance_exists(ob_player)) {
    if (instance_number(ob_player) > 1) { 
        control = 3; 
    } else {
        control = ob_player.control;
    }
}

if (instance_exists(target)) {
    switch control 
    {
        case 0: // Move the camera with the mouse
            //view_object = self;
            move_towards_point(mouse_x,mouse_y,0);
            xTo = mean(target.x + XSHIFT + lengthdir_x(min(radius,distance_to_point(mouse_x,mouse_y)),direction), target.x + XSHIFT + target.hsp[0]*HSP_SENSITIVITY);
            yTo = mean(target.y + YSHIFT + lengthdir_y(min(radius,distance_to_point(mouse_x,mouse_y)),direction), target.y + YSHIFT + target.vsp[0]*VSP_SENSITIVITY);
        
            sc_camera_move(xTo, yTo);
            break;
        case 1: // Move the camera with a gamepad
            __view_set( e__VW.Object, 0, self );
            var h_point = gamepad_axis_value(0, gp_axisrh) * radius;
            var v_point = gamepad_axis_value(0, gp_axisrv) * radius;
            
            move_towards_point(x+h_point, y+v_point, 0);
            xTo = target.x + XSHIFT + lengthdir_x(min(radius,distance_to_point(x+h_point,y+v_point)),direction);
            yTo = target.y + YSHIFT + lengthdir_y(min(radius,distance_to_point(x+h_point,y+v_point)),direction);
            
            sc_camera_move(xTo, yTo);
            break;
        case 2: // Move the camera to a specific position
            __view_set( e__VW.Object, 0, self );
            xTo = target.x;
            yTo = target.y;
            
            sc_camera_move(xTo, yTo);
            break;
        case 3: // Muliplayer Camera
            __view_set( e__VW.Object, 0, noone );
            sc_multi_object_cam(0, ob_player, __view_get( e__VW.HPort, 0 ));
            break;
    }
}

