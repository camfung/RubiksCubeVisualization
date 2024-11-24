void showAxis(){
    // x axis
  stroke(0,0,255); line(0,0,0, 500,0,0);
  // y axis
  stroke(0,255,0); line(0,500,0,0,0,0);
  // z axis
  stroke(255,0,0); line(0,0,500,0,0,0);
  fill(0);
  circle(0,0,30);
}

void showPieces(){
  int index = 0;
  cube[index].show();
  index++;
  if (index > 26){index = 0;}
}

void showCube(){

  for(int i = 0 ; i < 27; i++){
    push();
    // front
    if (cube[i].pos.z == move[4].z)
    {
      rotateZ(move[4].angle); 
    }
    
    // back
    if (cube[i].pos.z == move[5].z)
    {
      rotateZ(move[5].angle); 
    }
    
    // right
    if (cube[i].pos.x == move[0].x)
    {
      rotateX(move[0].angle); 
    }
    
    // left
    if (cube[i].pos.x == move[1].x)
    {
      rotateX(move[1].angle); 
    }
    
        // up
    if (cube[i].pos.y == move[3].y)
    {
      rotateY(move[3].angle); 
    }
    
    // down
    if (cube[i].pos.y == move[2].y)
    {
      rotateY(move[2].angle); 
    }
    
    cube[i].show();
    pop();
    
  }
      for (int i = 0; i < 6; i++)
  {
    move[i].update(i);
  }
}

void randomScramble()
{
  for (int i = 0; i < 10; i++)
  {
    int r2;
    int r = int(random(6));
    if (r % 2 == 0)
      {
        r2 = 1;
      }
    else 
      {
         r2 = -1;
      }
    move[r].start(r2);
  }
}
