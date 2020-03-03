/// @description  Create Textbox
var a;
a = 0;
if (talk = 1) {
  a = instance_create(0, 0, ob_textbox);
  a.text_id = text_id;
  talk = 2;
}

// Reset talk
if instance_exists(ob_textbox) {
  alarm[0] = 20
}

