class Swarm {
  Invaders[][] grid;
  //Invaders enemy;
  int size;
  int state;
  int numRows = 5;
  int numCols = 4;
  int moving = 1;

  Swarm(int numRows, int numCols) {
    grid = new Invaders[numRows][numCols];
    size = 15;
    state = ALIVE;

    for (int i = 0; i < numRows; i++) {
      for (int j = 0; j < numCols; j++) {
        grid[i][j] = new Invaders(i* 3 *size, j* 2 *size + 20, size, state);
      }
    }
  }

  void drawGrid() {
    for (int i = 0; i < numRows; i++) {
      for (int j = 0; j < numCols; j++) {
        if (grid[i][j] != null) {
          grid[i][j].display();}}}
          if (frameCount % 60 == 0) {
            for (int i = 0; i < numRows; i++){
            for ( int j = 0; j < numCols; j++){
            grid[i][j] = new Invaders((i* 3 * size) +  moving, j* 2 *size + 20, size, state);
          }
        }
      }
       moving += 1;
    }
  } // need to create check if invenders get off the screen and move down. 
    
