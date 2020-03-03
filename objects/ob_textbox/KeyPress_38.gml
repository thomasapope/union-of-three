if (text_option>0)
{
  if (text_option>2)
  {
    if (qbox_y==64)
    {
      sound_play(snd_click);
      switch(text_option)
      {
        case 4: text_option=3; break;
        case 5: text_option=4; break;
        case 6: text_option=5; break;
        case 7: text_option=6; break;
      }
    }
  }
  else
  {
    sound_play(snd_click);
    switch(text_option)
    {
      case 2: text_option=1; break;
    }
  }
}

