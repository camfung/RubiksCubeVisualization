int counter = 0;
void keyPressed(){
  if (key == 'l')
  {
    move[1].start(-1);  
  }
  if (key == 'L')
  {
    move[1].start(1);
  }
  if (key == 'r')
  {
    move[0].start(1);
  }
  
  if (key == 'R')
  {
    move[0].start(-1);
  }
  
  if (key == 'u')
  {
    move[3].start(-1);
  }
  
  if (key == 'U')
  {
    move[3].start(1);
  }
  
  if (key == 'd')
  {
    move[2].start(1);
  }
  
  if (key == 'D')
  {
    move[2].start(-1);
  }
  if (key == 'f')
  {
    move[4].start(1);
  }
if (key == 'F')
  {
    move[4].start(-1);
  }
  
  if (key == 'b')
  {
    move[5].start(-1);
  }
  
  if (key == 'B')
  {
    move[5].start(1);
  }
  
  if (key == ' ')
  randomScramble();
}
