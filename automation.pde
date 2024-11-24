class Auto{
  String turns;
  Auto(String _turns)
  {turns = _turns;}
  // 0: right, 1: left, 2: down, 3:up,  4:front,   5:back
  void apply(){
    for (int i = 0; i < turns.length(); i++){
      char state = turns.charAt(i); 
      switch (state){
        case 'u':
          move[3].start(1);
          break; 
        case 'U':
          move[3].start(-1);
          
         case 'd':
          move[2].start(-1);
          break; 
        case 'D':
          move[2].start(1);
          break;
        case 'r':
          move[0].start(-1);
          break; 
        case 'R':
          move[0].start(1);
          break;
        case 'l':
          move[1].start(1);
          break; 
        case 'L':
          move[1].start(-1);
          break;
        case 'f':
          move[4].start(1);
          break; 
        case 'F':
          move[4].start(-1);
          break;
        case 'b':
          move[5].start(-1);
          break; 
        case 'B':
          move[5].start(1);
          break;
        
      }
    }
  }
}
