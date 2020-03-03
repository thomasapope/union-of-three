///sc_multi_object_cam(view, target, min)

var view = argument[0];
var target = argument[1];
var minimum = argument[2];

var xPos, yPos; // The x and y position for the center of the view

if (instance_exists(target)) {
    // 
    xPos = 0;
    yPos = 0;
    
    with(target) {   
        xPos += x;
        yPos += y;
    }
    
    xPos /= instance_number(target);
    yPos /= instance_number(target);
    
    // Scale the view depending on the distance between the objects
    globalvar VMinX,VMaxX,VMinY,VMaxY;
    VMinX = xPos; 
    VMaxX = xPos;
    VMinY = yPos; 
    VMaxY = yPos;
    
    with(target) {   
        VMinX = min(VMinX,x);
        VMaxX = max(VMaxX,x);
        VMinY = min(VMinY,y);
        VMaxY = max(VMaxY,y);
    }
    
    var VSize = max(minimum,(VMaxX-VMinX),
        (VMaxY - VMinY) * (view_wport[view] / view_hport[view]));
    
    view_wview[view] = min(room_width, VSize * (view_wport[view]/view_hport[view]));
    view_hview[view] = min(room_height, VSize);
    
    xPos -= (view_wview[view]/2);
    yPos -= (view_hview[view]/2);
    
    // Make sure the view stays inside the room
    /*if (xPos < 0) {
        xPos += 0 - xPos;
    }
    if (xPos > room_width[view] - view_wview[view]) {
        xPos += room_width[view] - (xPos + view_wview[view]);
    }
    if (yPos < 0) {
        yPos += 0 - yPos;
    }
    if (yPos > room_height[view] - view_hview[view]) {
        yPos += room_height[view] - (yPos + view_hview[view]);
    }*/
    xPos = clamp(xPos, 0, room_width - view_wview);
    yPos = clamp(yPos, 0, room_height - view_hview);
    
    
    view_xview[view] = xPos;
    view_yview[view] = yPos;
}
