/// @description get_npc_axis(xaxis, targetx, targety)
/// @param xaxis
/// @param  targetx
/// @param  targety
xaxis = argument[0];
var tx = argument[1];
var ty = argument[2];

//var yaxis = 0;
yaxis = 0;
        
// Move in the direction of the target
if (tx > x) {
    xaxis = 1;
}
if (tx < x) {
    xaxis = -1;
}
if (ty > y+16) {
    //yaxis = 1;
    down = 0;
    up = 1;
}
if (ty < y+16) {
    //yaxis = -1;
    down = 1;
    up = 0;
}
/*if (yaxis == 1) {
    down = 0;
    up = 1;
} else {
    down = 1;
    up = 0;
}
