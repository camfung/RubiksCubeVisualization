// 0: right, 1: left, 2: down, 3:up,  4:front,   5:back
void rotateFace(int face, int dir)
{
  switch (face) 
  { 
    // right 
    case 0:
      for (int i = 0; i < 27; i++)
      {
        if (cube[i].pos.x == 1)
        {
          cube[i].turnX(dir); 
        }
      }
        break;
    // left    
    case 1:
      for (int i = 0; i < 27; i++)
      {
        if (cube[i].pos.x == -1)
        {
          cube[i].turnX(dir); 
        }
      }
      break;
    // down
    case 2:
      for (int i = 0; i < 27; i++)
      {
        if (cube[i].pos.y == 1)
        {
          cube[i].turnY(dir); 
        }
      }
      break;
      // up
    case 3:
      for (int i =0; i < 27; i++)
      {
        if (cube[i].pos.y == -1)
        {
          cube[i].turnY(dir); 
        }
      }
      break;
      // front
    case 4: 
      for (int i =0; i < 27; i++)
      {
        if (cube[i].pos.z == 1)
        {
          cube[i].turnZ(dir); 
        }
      }
      break;
      // back
    case 5:
      for (int i = 0; i < 27; i++)
      {
        if (cube[i].pos.z == -1)
        {
          cube[i].turnZ(dir); 
        }
      }
      break;
  }

}
