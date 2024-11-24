class Move{
  int x; 
  int y;
  int z;
  int dir;
  float angle;
  boolean animating;
  Move(int x, int y, int z, int dir)
  {
    this.x = x;
    this.y = y;
    this.z =z;
    this.dir = dir;
  }
  
  void start(int _dir) 
  {
     this.dir = _dir;
     animating = true; 
  }
  
  void update(int face)
  {
    
    if (animating)
    {
      angle += dir * .1; 
    
    if (abs(angle) > HALF_PI)
    {
     angle = 0;
     animating = false;
     rotateFace(face, move[face].dir); 
    }
  } 
  }
}
