class Cubie{
  PVector pos; 
  float width;
  //               0: right, 1: left, 2: down, 3:up,  4:front,   5:back
  color[] faces = new color[6];
  
  color[] col = new color[3];
  
  Cubie(PVector _pos, float _width){
    width = _width;
    pos = _pos;
    getColor();
    setColor();
  }
  void show(){
   stroke(0);
   strokeWeight(8);
   
   setColor();
   
   pushMatrix();
   float x = width * pos.x;
   float y = width * pos.y;
   float z = width * pos.z;
   translate(x, y, z);
   beginShape(QUADS);
   float w = width / 2;
   
   // BACK
    fill(faces[5]);
    vertex(-w,-w,-w);
    vertex(w,-w,-w);
    vertex(w,w,-w);
    vertex(-w,w,-w);
    
    // FRONT
    fill(faces[4]);
    vertex(-w,-w,w);
    vertex(w,-w,w);
    vertex(w,w,w);
    vertex(-w,w,w);
    
    // RIGHT
    fill(faces[0]);
    vertex(w,-w,-w);
    vertex(w,w,-w);
    vertex(w,w,w);
    vertex(w,-w,w);
    
    // LEFT
    fill(faces[1]);
    vertex(-w,-w,-w);
    vertex(-w,w,-w);
    vertex(-w,w,w);
    vertex(-w,-w,w);
    
    // UP
    fill(faces[3]);
    vertex(-w,-w,-w);
    vertex(-w,-w,w);
    vertex(w,-w,w);
    vertex(w,-w,-w);
    
    // DOWN
    fill(faces[2]);
    vertex(-w,w,-w);
    vertex(-w,w,w);
    vertex(w,w,w);
    vertex(w,w,-w);
 
    endShape(QUADS);
   
   popMatrix();
  } 
    void turnX(int dir)
    {
      PVector v1 = new PVector(1,0,0);
      PVector v2 = new PVector(0,0,-1).mult(dir);
      PVector v3 = new PVector(0,1,0).mult(dir);

      float _x = this.pos.dot(v1);
      float _y = this.pos.dot(v2);
      float _z = this.pos.dot(v3);
        
      this.pos.set(_x,_y,_z);
      int temp = col[1];
      col[1] = col[2];
      col[2] = temp;
      setColor(); 
  }
  
  void turnY(int dir)
    {
      PVector v1 = new PVector(0,0,1).mult(dir);
      PVector v2 = new PVector(0,1,0);
      PVector v3 = new PVector(-1,0,0).mult(dir);

      float _x = this.pos.dot(v1);
      float _y = this.pos.dot(v2);
      float _z = this.pos.dot(v3);
        
      this.pos.set(_x,_y,_z);
      int temp = col[0];
      col[0] = col[2];
      col[2] = temp;
      setColor(); 
  }
  
  void turnZ(int dir)
    {
      PVector v1 = new PVector(0,-1,0).mult(dir);
      PVector v2 = new PVector(1,0,0).mult(dir);
      PVector v3 = new PVector(0,0,1);

      float _x = this.pos.dot(v1);
      float _y = this.pos.dot(v2);
      float _z = this.pos.dot(v3);
        
      this.pos.set(_x,_y,_z);
      int temp = col[0];
      col[0] = col[1];
      col[1] = temp;
      setColor(); 
  }
  
  // col to faces
  void setColor(){
    float[] _pos = pos.array();
    int k = 0;
    for(int i = 0; i < 5; i+=2, k++){
      if(_pos[k] > 0){
       faces[i] = col[k];
       faces[i+1] = #000000; 
      }
      else if (_pos[k] < 0){
       faces[i] = #000000;
       faces[i+1] = col[k]; 
      }
      else{
         faces[i] = faces[i+1] = 0;
      } 
    }
  }
  // pos to col
  void getColor()
  {    
    float[] _pos = pos.array();
    int k;
    for (int i = 0; i < 3; i++)
    {
      k = i * 2; 
       if (_pos[i] > 0)
         {col[i] = clrs[k];} 
       else if (_pos[i] < 0)
         {col[i] = clrs[++k];}
       else {col[i] = #000000;}
    }
  }
}
