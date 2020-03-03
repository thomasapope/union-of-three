/// enable_action_push()
//var hspd = hsp[0] + hsp[1];
/*var hspd = xaxis;
var instance = instance_place(x+(sign(xaxis) * groundspd), y, ob_box);
if (instance) {
    var new_x = instance.x;
    if (hspd > 0) {
        //if (!place_meeting((decimal_bbox_right()+2)-((instance.bbox_left-round(instance.x))), 0, collision_object))
        new_x = (decimal_bbox_right()+2)-((instance.bbox_left-round(instance.x)));
    } else if (hspd < 0) {
        //if (!place_meeting((decimal_bbox_left()-2)-(instance.bbox_right-round(instance.x)), y, collision_object))
            new_x = (decimal_bbox_left()-2)-(instance.bbox_right-round(instance.x));
    }
    with (instance) {
        //x=new_x;
        a = approach(x, new_x, 1);
    }
    //instance.hsp[0] = approach(instance.hsp[0], RUN_SPEED * sign(xaxis), 1.5);
    //instance.hsp[0] = other.groundspd * xaxis;
}*/

var box = instance_place(x+xaxis, y, ob_box);
if (box) {
    if (collision_point(bbox_right, y, collision_object, false, true) == noone) {
        box.x = bbox_right + (xaxis * 2);
    }
    
    
}
