///scr_textbox(id)
//
/*
One of the main differences between the Textbox Engine V3 and V4
is the changing of the text storage method.

I've decided to make a script that stores the entirity of the
game's text as opposed to stuffing it in creation codes or altering
the textbox's local variables on creation.

This should alleviate the problem of finding certain text strings
in games with a lot of text, and should make it easier to refer to
when using the textbox prompts.
*/
switch(argument0) {
    case 0: // Grease PAN
        if (sc_choices(1) == 0) {
            sc_cicount(0, 2);
            sc_name("Weedoggy", 3, 2);
            sc_text("Welcome to The Grease Monkey.} We serve the [greasiest#|monkey burritos.");
            sc_text("|&If you want to have burritos, please give the doughs.`#Do you[... |have the doughs?");
            option_text[0] = "%4";
            sc_option(2, "Please speak normal English", 1);
            sc_option(3, "Depends on whose asking", 2);
            sc_option(4, "Nope. No doughs here.", 3);
            sc_option(5, "(Ignore)", 4);
            modifier = 1;
        } else if (sc_choices(1) == 2) {
            sc_cicount(0, 1);
            sc_name("Weedoggy", 3, 1);
            sc_text("Didn't I tell you no more come around here?} Leave now #or I call patrol!");
        } else {
            sc_cicount(0, 1);
            sc_name("Weedoggy", 3, 1);
            sc_text("Stupid American.");
        }
        break;
    case 1: // Grease PAN yes
        sc_cicount(0, 1);
        sc_name("Weedoggy", 3, 1);
        sc_text("You mock me? You no get burritos. You not even worthy#of burritos. Begone!");
        break;
    case 2: // depends...
        sc_cicount(0, 1);
        sc_name("Weedoggy", 3, 1);
        sc_text("Me, obviously.");
        break;
    case 3: // nope
        sc_cicount(0, 1);
        sc_name("Weedoggy", 3, 1);
        sc_text("Then what are you wasting my time for?} I have {PAYING#|customers to attend to.");
        break;
    case 4: // (ignore)
        sc_cicount(0, 1);
        sc_name("Weedoggy", 3, 1);
        sc_text("You even hear me?} ~{HEY AMERICAN!|} [ME HAVE BURRITOS!|} {VERY #[GOOD EAT!|` [YOU WANTY?|``~ [Stupid American...");
        break;
}
