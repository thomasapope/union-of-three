if image_alpha > 0 {
    image_alpha -= fade;
} else {
    instance_destroy();
}

