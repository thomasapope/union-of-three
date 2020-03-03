/// @description  fade_bound(dir)
/// @param dir
var i = (instance_create(0, 0, ob_fade_effect));
    i.bound = true;
    i.dir = argument[0];
    i.alpha = 0;
return i;
