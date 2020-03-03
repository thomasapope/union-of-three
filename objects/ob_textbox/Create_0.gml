//sets the variables for:
//text_to_draw = which text is being drawn
//arrow_drawer = whether the arrow is on or not
//chr_ = which character of text being drawn is currently the last
//skipchr notes how many characters for the command editor to skip
//speed_mode is the speed that the text will be written
//(default speed_mode is 3)
//sound_type is the "voice" for the current character speaking
//(default sound_type is snd_voicemid)
//sc_stredit sets up the edited text for writing effects
//shaking tells whether or not the screen shaking effect is on
//view_xstart and view_ystart keep track of the screen shaking
//namebox_size is the size of the namebox
//command checks if the current character is a command character
//sliding makes the textbox slide on/off screen
//text_option is for prompts in the textbox
//option_text is what text the options give
//goto_text is which text_id to go to after selecting an option
//modifier is which section in the choice variable to modify
//changed[x] is to check if cut-ins have been changed
//q_text and q_name are queues where the text itself and names are
//q_namebox stores the size of the namebox
//qbox_y is what the y value of the question box is
//text_id is called upon textbox creation, and finds which text to use
//qbox_questions shows how many questions for multichoice boxes
//str_colored shows what the colored text is
//str_colorc is what color to use on special text
//str_inline is how many characters are in the current line of text
text_to_draw=0;
arrow_drawer=0;
chr_=0;
skipchr=0;
speed_mode=3;
sound_type=snd_voicemid;
str_edited="";
shaking=0;
view_xstart=__view_get( e__VW.XView, view_current );
view_ystart=__view_get( e__VW.YView, view_current );
namebox_size=0;
command=0;
sliding=1;

// Draw locations
drawbox_y=62;
drawbox2_y=-50;
drawbox2_yy = 48; // effects how far the top box dips down

TEXTBOX_Y = 192;
NAMEBOX_Y = 180;
NAME_X = 3;

TEXT_X = 4;
TEXT_Y = TEXTBOX_Y + 4;

text_option=0;
option_text="";
goto_text=0;
changed[0]=0;
changed[1]=0;
modifier=0;
q_text=ds_queue_create();
q_name=ds_queue_create();
q_namesize=ds_queue_create();
qbox_y=278;
qbox_width = 240;
qbox_questions=0;
str_colored=0;
str_colorc=0;
str_inline=0;
//All variables past here are for the cut-in heads
//Initializing how many cut-ins are currently being used
//(up to 2 in this engine demo)
ci_count=0;
q_cicount=ds_queue_create();
//Initializing the cut-in IDs, flips, and x positions
ci_id[0]=0;
q_ciid[0]=ds_queue_create();
ci_xto[0]=0;
q_cixto[0]=ds_queue_create();
ci_xpos[0]=400;
ci_flip[0]=0;
q_ciflip[0]=ds_queue_create();
q_cichange[0]=ds_queue_create();
ci_id[1]=0;
q_ciid[1]=ds_queue_create();
ci_xto[1]=0;
q_cixto[1]=ds_queue_create();
ci_xpos[1]=400;
ci_flip[1]=0;
q_ciflip[1]=ds_queue_create();
q_cichange[1]=ds_queue_create();
alarm[2]=1; //This is so it doesn't break setting text_id upon creation through other objects
//DEBUG FEATURE, PLEASE IGNORE
//show_message(string(ds_queue_size(q_name)))

