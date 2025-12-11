class Swarm {
  Invaders[][] grid;
  //Invaders enemy;
  int size;
  int state;
  int numRows;
  int numCols;
  int moving = 1;
  boolean hitEdge;

  Swarm(int nr, int nc) {
    numRows = nr;
    numCols = nc;
    grid = new Invaders[numRows][numCols];
    size = 15;
    state = ALIVE;

    for (int i = 0; i < numRows; i++) {
      for (int j = 0; j < numCols; j++) {
        grid[i][j] = new Invaders(i* 3 *size, j* 3 *size + 60, size, state);
      }
    }
  }

  void drawGrid() {
    hitEdge = false;
    for (int i = 0; i < numRows; i++) {
      for (int j = 0; j < numCols; j++) {
        if (grid[i][j] != null) {
          grid[i][j].display();
        }
      }
    }


    if (hitEdge) {
      moving *= -1;
      for (int i = 0; i < numRows; i++) {
        for (int j = 0; j < numCols; j++) {
          if (grid[i][j] != null) {
            grid[i][j].pos.y += 10;
          }
        }
      }
    }
    if (frameCount % 60 == 0) {
      for (int i = 0; i < numRows; i++) {
        for ( int j = 0; j < numCols; j++) {
          if (grid[i][j] != null) {
            if (grid[i][j].pos.x <= 0 || grid[i][j].pos.x + grid[i][j].size > width) {
              hitEdge = true;
              grid[i][j] = new Invaders((i* 3 * size) +  moving, j* 3 *size + 60, size, state);
            }
          }
        }
      }
      moving += 1;
    }
  } // need to create check if invenders get off the screen and move down.
}
