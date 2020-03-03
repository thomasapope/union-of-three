/// action_fire_projectile(object, creator, damage, dir, velocity, crit);
var object = argument[0];
var creator = argument[1];
var damage = argument[2];
var dir = argument[3];
var velocity = argument[4];
var crit = argument[5];

var projectile = instance_create(x, y, object);
    projectile.creator = creator;
    projectile.damage = damage;
    projectile.dir = dir;
    projectile.velocity = velocity;
    projectile.cancrit = crit;
