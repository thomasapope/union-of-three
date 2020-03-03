///instances_place_multiple(x, y, objects)
/*
    Works like instance_place but returns a ds_list of
    all the instances at that location.
*/

var xx = argument[0]; // x position to check
var yy = argument[1]; // y position to check
var objects = argument[2]; // Object to check for
var list = ds_list_create(); // New list data structure

// Loop through the instances and add them to the list
for (var i=0; i<ds_list_size(objects); i++) {
    var ins = objects[| i];
    while (instance_place(xx, yy, ins)) {
        var o = instance_place(xx, yy, ins); // o is the id of the instance
        ds_list_add(list, o); // Add the instance to the list
        instance_deactivate_object(o); // deactivate the instance we just added to the list
    }
}

// Reactivate all the deactivated instances
for (var i=0; i<ds_list_size(list); i++) {
    instance_activate_object(list[| i]);
}

return list;
