sc_textbox(text_id);
//c tells how many boxes are in the current text
c=ds_queue_size(q_text);
//Init the namebox and string for first box
namebox_name=ds_queue_dequeue(q_name);
namebox_size=ds_queue_dequeue(q_namesize);
str_=ds_queue_dequeue(q_text);
ci_count=ds_queue_dequeue(q_cicount);
if (ci_count==1)
{
  ci_id[0]=ds_queue_dequeue(q_ciid[0]);
  ci_xpos[0]=400;
  ci_xto[0]=ds_queue_dequeue(q_cixto[0]);
  ci_flip[0]=ds_queue_dequeue(q_ciflip[0]);
}
if (ci_count==2)
{
  ci_id[0]=ds_queue_dequeue(q_ciid[0]);
  ci_xpos[0]=400;
  ci_xto[0]=ds_queue_dequeue(q_cixto[0]);
  ci_flip[0]=ds_queue_dequeue(q_ciflip[0]);
  ci_id[1]=ds_queue_dequeue(q_ciid[1]);
  ci_xpos[1]=400;
  ci_xto[1]=ds_queue_dequeue(q_cixto[1]);
  ci_flip[1]=ds_queue_dequeue(q_ciflip[1]);
}

