// Position Variables

var h_point, v_point;

control = creator.control;
pad = creator.pad_num;

switch control
{
    case 0:
        h_point = mouse_x;
        v_point = mouse_y;
        break;
    case 1:
        h_point = x + gamepad_axis_value(pad, gp_axisrh);
        v_point = y + gamepad_axis_value(pad, gp_axisrv);
        break;
}
dir1=point_direction(x,y,h_point,v_point)

// Move to Player Position

x = creator.x;
y = creator.y - 12;

// Rotate Image Angle

var times=1;
var dir1, dir2, dir3;

if dir1 > 90
    if dir1 < 270
        times =- 1;

if times=1 {
    if dir1 > 270
        dir1 -= 360;
        dir2 = dir1/2;
        dir3 = dir2;
}

if times = -1 {
    dir1 = 180 - dir1;
    dir2 = dir1 / 2;
    dir3 = -dir2 + 180;
}

image_yscale = times;
var dif = angle_difference(dir3, image_angle);
image_angle += median(-20, dif, 20);

