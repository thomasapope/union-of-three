/// sc_damage()

var xx = x + lengthdir_x(velocity, dir)// * 1.5;
var yy = y + lengthdir_y(velocity, dir)// * 1.5;
var collision = collision_line(x, y, xx, yy, PAR_BREAKABLE, 0 ,0);

if (collision) { // is there an object there?
    if (collision.id != creator && !hasdamaged) { // is it us? // have we already damaged
        // Get precise collision point
        var px = x + lengthdir_x(1, dir);
        var py = y + lengthdir_y(1, dir);
        repeat (velocity) {
            if (!collision_point(px, py, PAR_BREAKABLE, 0, 0)) {
                px = px + lengthdir_x(1, dir);
                py = py + lengthdir_y(1, dir);
            } else {
                break;
            }
        }
        
        // Check for critical collision
        if (cancrit == 1 && collision.crit == 1) { // can we even crit?
            if (script_execute(collision.crit_location, px, py, collision, 0)) {
                damage = damage * critical;
                col = c_red;
                bot_col = c_orange;
                font = fn_02;
            }
        }
        
        // Deal full damage
        if (damage < collision.hp) {
            dealt = floor(damage);
            collision.hp -= damage;
        } else {
        // Deal whatever health is left
            dealt = floor(collision.hp);
            collision.hp -= collision.hp;
        }
        
        
        // Apply Knockback    
        if (collision.mobile == 1) { // is the object a mobile?
            knockback = max(dealt/35, 3);
            collision.hsp[1] += -sign(creator.x-collision.x) * knockback;
            collision.vsp[1] += -sign(creator.y-collision.y) * knockback;
        } 
        
        // Draw damage text
        if (collision.text == 1) { // should damage text be drawn for this object?
            var i = instance_create(px, py, ob_draw_text);
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
}
