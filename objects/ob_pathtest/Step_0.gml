get_target(ob_player, __view_get( e__VW.WView, 0 ))

if (set == 1) {
    dist = path_get_length(pathi);    
    xaxis = sign(path_get_x(pathi, ind+spd/dist) - x);
    yaxis = sign(path_get_y(pathi, ind+spd/dist) - y);
    ind += spd/dist;
    if (yaxis == 1) {
        down = 1;
        up = 0;
    } else {
        down = 0;
        up = 1;
    }   
    x+=xaxis*spd;
    y+=yaxis*spd;
}

