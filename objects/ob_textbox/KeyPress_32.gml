// Skip character typing
if (chr_ < string_length(str_edited)) {
    chr_ = string_length(str_edited);
    str_inline = chr_;
    if (string_char_at(str_, 1) == "&") {
        arrow_drawer = 1;
        text_option = 1;
        sc_qboxcheck();
    }
}

if (arrow_drawer==1 and text_option==0)
{ 
  //if the current line of text is larger than the last line
  //destroy self
  if (text_to_draw+2>c)
  {
    sliding=-1;
    sound_play(snd_textboxclose);
  }
  else
  {
    //stop drawing the arrow
    arrow_drawer=0;
    //set the text to the next line
    text_to_draw+=1;
    //re-initialize the text printing
    chr_=0;
    skipchr=0;
    str_colorc=0;
    str_colored="";
    str_inline=0;
    //sets up the new command-free text line
    namebox_name=ds_queue_dequeue(q_name);
    namebox_size=ds_queue_dequeue(q_namesize);
    str_=ds_queue_dequeue(q_text);
    ci_count=ds_queue_dequeue(q_cicount);
    if (ci_count>0)
    {
      if (ci_count==1)
      {
        ci_id[0]=ds_queue_dequeue(q_ciid[0]);
        changed[0]=ds_queue_dequeue(q_cichange[0]);
        if (changed[0]=1)
        {
          ci_xpos[0]=400;
          changed[0]=0;
        }
        ci_xto[0]=ds_queue_dequeue(q_cixto[0]);
        ci_flip[0]=ds_queue_dequeue(q_ciflip[0]);
      }
      if (ci_count==2)
      {
        ci_id[0]=ds_queue_dequeue(q_ciid[0]);
        changed[0]=ds_queue_dequeue(q_cichange[0]);
        if (changed[0]=1)
        {
          ci_xpos[0]=400;
          changed[0]=0;
        }
        ci_xto[0]=ds_queue_dequeue(q_cixto[0]);
        ci_flip[0]=ds_queue_dequeue(q_ciflip[0]);
        ci_id[1]=ds_queue_dequeue(q_ciid[1]);
        changed[1]=ds_queue_dequeue(q_cichange[1]);
        if (changed[1]=1)
        {
          ci_xpos[1]=400;
          changed[1]=0;
        }
        ci_xto[1]=ds_queue_dequeue(q_cixto[1]);
        ci_flip[1]=ds_queue_dequeue(q_ciflip[1]);
      }
    }
    sc_stredit();
    sound_play(snd_click);
    alarm[1]=1;
  }
}
else
{
  if (arrow_drawer==1 and text_option>=1)
  {
    if (text_option>1 and qbox_y>64)
    {
      exit;
    }
    global.text_choices=string_delete(global.text_choices,modifier,1);
    switch(text_option)
    {
      case 1: global.text_choices=string_insert("1",global.text_choices,modifier); break;
      case 2: global.text_choices=string_insert("2",global.text_choices,modifier); break;
      case 3: global.text_choices=string_insert("3",global.text_choices,modifier); break;
      case 4: global.text_choices=string_insert("4",global.text_choices,modifier); break;
      case 5: global.text_choices=string_insert("5",global.text_choices,modifier); break;
      case 6: global.text_choices=string_insert("6",global.text_choices,modifier); break;
      case 7: global.text_choices=string_insert("7",global.text_choices,modifier); break;
    }
    text_id=goto_text[text_option-1];
    text_option=0;
    qbox_y=278;
    //get the new text
    sc_textbox(text_id);
    c=ds_queue_size(q_text);
    //stop drawing the arrow
    arrow_drawer=0;
    //set the text to the beginning
    text_to_draw=0;
    //re-initialize the text printing
    chr_=0;
    skipchr=0;
    str_colorc=0;
    str_colored="";
    str_inline=0;
    //sets up the new command-free text line
    namebox_name=ds_queue_dequeue(q_name);
    str_=ds_queue_dequeue(q_text);
    ci_count=ds_queue_dequeue(q_cicount);
    if (ci_count>0)
    {
      if (ci_count==1)
      {
        ci_id[0]=ds_queue_dequeue(q_ciid[0]);
        changed[0]=ds_queue_dequeue(q_cichange[0]);
        if (changed[0]=1)
        {
          ci_xpos[0]=400;
          changed[0]=0;
        }
        ci_xto[0]=ds_queue_dequeue(q_cixto[0]);
        ci_flip[0]=ds_queue_dequeue(q_ciflip[0]);
      }
      if (ci_count==2)
      {
        ci_id[0]=ds_queue_dequeue(q_ciid[0]);
        changed[0]=ds_queue_dequeue(q_cichange[0]);
        if (changed[0]=1)
        {
          ci_xpos[0]=400;
          changed[0]=0;
        }
        ci_xto[0]=ds_queue_dequeue(q_cixto[0]);
        ci_flip[0]=ds_queue_dequeue(q_ciflip[0]);
        ci_id[1]=ds_queue_dequeue(q_ciid[1]);
        changed[1]=ds_queue_dequeue(q_cichange[1]);
        if (changed[1]=1)
        {
          ci_xpos[1]=400;
          changed[1]=0;
        }
        ci_xto[1]=ds_queue_dequeue(q_cixto[1]);
        ci_flip[1]=ds_queue_dequeue(q_ciflip[1]);
      }
    }
    sc_stredit();
    sound_play(snd_click);
    alarm[1]=1;
  }
}

