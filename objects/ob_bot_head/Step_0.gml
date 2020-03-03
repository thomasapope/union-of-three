tx = creator.tx;
ty = creator.ty;
seen = creator.seen;

// Position Variables
if seen
    dir1=point_direction(x,y,tx,ty);
else
    dir1= sign(creator.hsp[0]);

// Move to Player Position

x = creator.x
y = creator.y - 12

// Rotate Image Angle

times=1

if dir1>90
if dir1<270
    times=-1

if times=1 {
    if dir1>270
    dir1-=360
    dir2=dir1/2
    dir3=dir2
}

if times = -1 {
    dir1 = 180-dir1
    dir2 = dir1/2
    dir3 = -dir2+180
}

image_yscale = times;
image_angle = dir3;

