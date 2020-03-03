//screen shake effect
if (shaking==1)
{
  __view_set( e__VW.XView, view_current, view_xstart+choose(-2,-1,0,1,2) );
  __view_set( e__VW.YView, view_current, view_ystart+choose(-2,-1,0,1,2) );
}
else
{
  __view_set( e__VW.XView, view_current, view_xstart );
  __view_set( e__VW.YView, view_current, view_ystart );
}
//textbox sliding
if (sliding==1)
{
  drawbox2_y+=1;
  if (drawbox_y>38)
  {
    drawbox_y-=3;
  }
  else
  {
    if (drawbox_y>6)
    {
      drawbox_y-=2;
    }
    else
    {
      drawbox_y-=1;
      if (drawbox_y==0)
      {
        sliding=0;
        alarm[1]=3;
        sc_stredit();
      }
    }
  }
}
if (sliding==-1)
{
  if (ci_count==0)
  {
    drawbox_y+=8;
    drawbox2_y-=6;
    if (drawbox_y>=64)
    {
      instance_destroy();
    }
  }
  else
  {
    if (ci_count==1)
    {
      if (ci_xpos[0]<160) //if a character is to the left of the middle of the screen
      {
        if (ci_xpos[0]>-80)
        {
          ci_xpos[0]-=16;
        }
        else
        {
          drawbox_y+=8;
          drawbox2_y-=6;
          if (drawbox_y>=64)
          {
            instance_destroy();
          }
        }
      }
      if (ci_xpos[0]>=160) //if a character is to the right of the middle of the screen
      {
        if (ci_xpos[0]<440)
        {
          ci_xpos[0]+=16;
        }
        else
        {
          drawbox_y+=8;
          drawbox2_y-=6;
          if (drawbox_y>=64)
          {
            instance_destroy();
          }
        }
      }
    }
    if (ci_count==2)
    {
      if (ci_xpos[0]<160) //if a character is to the left of the middle of the screen
      {
        if (ci_xpos[0]>-80)
        {
          ci_xpos[0]-=16;
        }
        else
        {
          drawbox_y+=8;
          drawbox2_y-=6;
          if (drawbox_y>=64)
          {
            instance_destroy();
          }
        }
      }
      if (ci_xpos[0]>=160) //if a character is to the right of the middle of the screen
      {
        if (ci_xpos[0]<440)
        {
          ci_xpos[0]+=16;
        }
        else
        {
          drawbox_y+=8;
          drawbox2_y-=6;
          if (drawbox_y>=64)
          {
            instance_destroy();
          }
        }
      }
      if (ci_xpos[1]<160) //if a character is to the left of the middle of the screen
      {
        if (ci_xpos[1]>-80)
        {
          ci_xpos[1]-=16;
        }
        else
        {
          drawbox_y+=8;
          drawbox2_y-=6;
          if (drawbox_y>=64)
          {
            instance_destroy();
          }
        }
      }
      if (ci_xpos[1]>=160) //if a character is to the right of the middle of the screen
      {
        if (ci_xpos[1]<440)
        {
          ci_xpos[1]+=16;
        }
        else
        {
          drawbox_y+=8;
          drawbox2_y-=6;
          if (drawbox_y>=64)
          {
            instance_destroy();
          }
        }
      }
    }
  }
}
//moving the cut-ins
if (ci_count==1 and sliding==0)
{
  //cixpos0 right of xto
  if (ci_xpos[0]>ci_xto[0])
  {
    if (ci_xpos[0]<=ci_xto[0]+80)
    {
      if (ci_xpos[0]<=ci_xto[0]+25)
      {
        if (ci_xpos[0]<=ci_xto[0]+5)
        {
          ci_xpos[0]-=1;
        }
        else
        {
          ci_xpos[0]-=4;
        }
      }
      else
      {
        ci_xpos[0]-=8;
      }
    }
    else
    {
      ci_xpos[0]-=16;
    }
  }
  //cixpos0 left of xto
  if (ci_xpos[0]<ci_xto[0])
  {
    if (ci_xpos[0]>=ci_xto[0]-80)
    {
      if (ci_xpos[0]>=ci_xto[0]-25)
      {
        if (ci_xpos[0]>=ci_xto[0]-5)
        {
          ci_xpos[0]+=1;
        }
        else
        {
          ci_xpos[0]+=4;
        }
      }
      else
      {
        ci_xpos[0]+=8;
      }
    }
    else
    {
      ci_xpos[0]+=16;
    }
  }
}
if (ci_count==2 and sliding==0)
{
  //cixpos0 right of xto
  if (ci_xpos[0]>ci_xto[0])
  {
    if (ci_xpos[0]<=ci_xto[0]+80)
    {
      if (ci_xpos[0]<=ci_xto[0]+25)
      {
        if (ci_xpos[0]<=ci_xto[0]+5)
        {
          ci_xpos[0]-=1;
        }
        else
        {
          ci_xpos[0]-=4;
        }
      }
      else
      {
        ci_xpos[0]-=8;
      }
    }
    else
    {
      ci_xpos[0]-=16;
    }
  }
  //cixpos0 left of xto
  if (ci_xpos[0]<ci_xto[0])
  {
    if (ci_xpos[0]>=ci_xto[0]-80)
    {
      if (ci_xpos[0]>=ci_xto[0]-25)
      {
        if (ci_xpos[0]>=ci_xto[0]-5)
        {
          ci_xpos[0]+=1;
        }
        else
        {
          ci_xpos[0]+=4;
        }
      }
      else
      {
        ci_xpos[0]+=8;
      }
    }
    else
    {
      ci_xpos[0]+=16;
    }
  }
  //cixpos1 right of xto
  if (ci_xpos[1]>ci_xto[1])
  {
    if (ci_xpos[1]<=ci_xto[1]+80)
    {
      if (ci_xpos[1]<=ci_xto[1]+25)
      {
        if (ci_xpos[1]<=ci_xto[1]+5)
        {
          ci_xpos[1]-=1;
        }
        else
        {
          ci_xpos[1]-=4;
        }
      }
      else
      {
        ci_xpos[1]-=8;
      }
    }
    else
    {
      ci_xpos[1]-=16;
    }
  }
  //cixpos1 left of xto
  if (ci_xpos[1]<ci_xto[1])
  {
    if (ci_xpos[1]>=ci_xto[1]-80)
    {
      if (ci_xpos[1]>=ci_xto[1]-25)
      {
        if (ci_xpos[1]>=ci_xto[1]-5)
        {
          ci_xpos[1]+=1;
        }
        else
        {
          ci_xpos[1]+=4;
        }
      }
      else
      {
        ci_xpos[1]+=8;
      }
    }
    else
    {
      ci_xpos[1]+=16;
    }
  }
}
//moving the question box
if (text_option>=2 and arrow_drawer==1)
{
  if (qbox_y>64)
  {
    if (qbox_y<120)
    {
      if (qbox_y<70)
      {
        qbox_y-=1;
      }
      else
      {
        qbox_y-=3;
      }
    }
    else
    {
      qbox_y-=6;
    }
  }
}

