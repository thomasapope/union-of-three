// Get Target Coordinates
if !collision_line(x,y,argument0.x,argument0.y,par_wall,0,1)//checks if bot can see target
{
    targetseen = true;
}
else
{
    targetseen = false;
}

if targetseen = true
{
    lastx = argument0.x;
    lasty = argument0.y;
}

if instance_exists(argument0)
{
    if targetseen = true//sets target coordinates if bot can see target
    {
        targetx = argument0.x;
        targety = argument0.y;
    }
    else
    {
        targetx = lastx;
        targety = lasty;
    }
}

sc_drawgettarget()
