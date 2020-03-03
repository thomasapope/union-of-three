// Fade and destroy
if image_alpha >= 0 {
    image_alpha -= fade;
} else {
    instance_destroy();
}

// Set direction and speed
if (vel > 0) {
    vel -= vel / 10;
}
dir += random_range(-5, 5);
direction = dir;
speed = vel;

