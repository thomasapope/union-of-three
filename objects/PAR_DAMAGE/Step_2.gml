/// @description  Collision with objects
sc_damage();

/*var target;

// Calculate collision position
//xx = x + lengthdir_x(velocity, dir);
//yy = y + lengthdir_y(velocity, dir);


var xx = x + (lengthdir_x(velocity, dir)) / 2;
var yy = y + (lengthdir_y(velocity, dir)) / 2;
var collision = instance_place(xx, yy, PAR_BREAKABLE);

if (collision) {
    if (collision.id != creator && !hasdamaged) {
        target = collision;
        if (cancrit == 1 && collision.crit == 1) {
            // Collision with critical object
            if (script_execute(collision.crit_location, xx, yy, collision, 0)) {
                damage = damage * critical;
                col = c_red;
                bot_col = c_orange;
                font = fn_02;
            }
        }
        
        // Deal full damage
        if (damage < target.hp) {
            dealt = floor(damage);
            target.hp -= damage;
        } else {
        // Deal whatever health is left
            dealt = floor(target.hp);
            target.hp -= target.hp;
        }
        
        
        // Apply Knockback    
        if (collision.mobile == 1) { // is the object a mobile?
            knockback = max(dealt/35, 3);
            target.hsp[1] += -sign(creator.x-target.x) * knockback;
            target.vsp[1] += -sign(creator.y-target.y) * knockback;
        } 
        
        // Draw damage text
        if (collision.text == 1) { // should damage text be drawn for this object?
            var i = instance_create(x, y, ob_draw_text);
                i.str = string(dealt);
                i.col = col;
                i.bot_col = bot_col;
                i.dir = dir;
                i.vel = velocity;
                i.font = font;
        }
        hasdamged = true;
        instance_destroy();
    }
}*/

/* */
/*  */
