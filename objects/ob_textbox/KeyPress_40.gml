if (text_option>0)
{
  if (text_option>2)
  {
    if (qbox_y==64)
    {
      sound_play(snd_click);
      switch(text_option)
      {
        case 3: text_option=4; break;
        case 4: if qbox_questions>2 {text_option=5;} break;
        case 5: if qbox_questions>3 {text_option=6;} break;
        case 6: if qbox_questions>4 {text_option=7;} break;
      }
    }
  }
  else
  {
    sound_play(snd_click);
    switch(text_option)
    {
      case 1: text_option=2; break;
    }
  }
}

