class Swarm {
  Invaders[][] grid;
  //Invaders enemy;
  int size;
  int state;
  int numRows;
  int numCols;
  int moving = 1;
  int drop = 10;
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
  } // populates swarm

  void drawGrid() {
    hitEdge = false;
    for (int i = 0; i < numRows; i++) {
      for (int j = 0; j < numCols; j++) {
        if (grid[i][j] != null) {
          grid[i][j].display();
        }
      }
    }
    for (int i = 0; i < numRows; i++) {
      for (int j = 0; j < numCols; j++) {
        if (grid[i][j].pos.x <= 0 || grid[i][j].pos.x + grid[i][j].size  > width) {
          hitEdge = true;
        }
      }
    }



    if (hitEdge) {
      for ( int i = 0; i < numRows; i++) {
        for ( int j = 0; j < numCols; j++) {
          if (grid[i][j] != null) {
            grid[i][j].pos.y += drop;
            moving = - moving;
          }
        }
      }
    }


    if (frameCount % 60 == 0) {
      for (int i = 0; i < numRows; i++) {
        for ( int j = 0; j < numCols; j++) {
          if (grid[i][j] != null) {
            grid[i][j] = new Invaders((i* 3 * size) +  moving, j* 3 *size + 60, size, state);
          }
        }
      }

      moving += 10;
    }
  }
}

  // need to create check if invenders get off the screen and move down.
