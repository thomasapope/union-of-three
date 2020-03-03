// Check if door is a border door
if (x-1 < 0) {
    border_door = true;
    border_dir = -1;
}
if (x+sprite_width+1 > room_width) {
    border_door = true;
    border_dir = 1;
}
MAX_FADE = ob_fade_effect.MAX_FADE;


