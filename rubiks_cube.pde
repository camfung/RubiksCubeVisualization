import peasy.*;
PeasyCam cam;

int dim = 3;
float w = 50; 
int winWid = 700;
int rate = 60; 

Move[] move;

Cubie[] cube = new Cubie[dim * dim *dim];
color[] clrs = {#FF0000, #ff8c00 ,#FFFFFF,#FFFF00 , #0000ff, #00D100}; 
void setup(){
  size(700, 700, P3D);
  cam = new PeasyCam(this, 400);
  
  int index = 0;
  for(int z = -1; z <=1; z++)
  {
    for(int y = -1; y <= 1; y++)
    {
        for(int x = -1; x <=1; x++)
        {
          PVector v = new PVector(x,y,z); 
          cube[index++] = new Cubie(v, w);
        }
      }
    }
  frameRate(rate);
  // 0: right,1:left,2:down,3:up,4:front,5:back
  move = new Move[6];
  move[0] = new Move(1,0,0,1);
  move[1] = new Move(-1,0,0,1);
  move[2] = new Move(0,1,0,1);
  move[3] = new Move(0,-1,0,1);
  move[4] = new Move(0,0,1,1);
  move[5] = new Move(0,0,-1,1);
  Auto l = new Auto("lur");
  //l.apply();
}
void draw(){
  background(135);
  showCube();
  //showAxis();
}
