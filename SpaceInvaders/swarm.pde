class Swarm {
  Invaders[][] grid;
  //Invaders enemy;
  int size;
  int state;
  int numRows;
  int numCols;
  int direction = 10;
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
        grid[i][j] = new Invaders(i * 3 *size, j*  3 *size + 10, size, state);
      }
    }
  } // populates swarm

  void drawGrid() {

    for (int i = 0; i < numRows; i++) {
      for (int j = 0; j < numCols; j++) {
        if (grid[i][j] != null) {
          grid[i][j].display();
        }
      }
    }
    //hitEdge = false;
    for (int i = 0; i < numRows; i++) {
      for (int j = 0; j < numCols; j++) {
        if (grid[i][j] != null) {
          if (grid[i][j].pos.x <= 0 || grid[i][j].pos.x + grid[i][j].size  > width) { // checking
            hitEdge = true;
          } else {
            hitEdge = false;
          }
        }
      }
    }



    //if (hitEdge) {
    //  for ( int i = 0; i < numRows; i++) {
    //    for ( int j = 0; j < numCols; j++) {
    //      if (grid[i][j] != null) {
    //        grid[i][j].pos.y ++;
    //        direction = -direction;
    //        hitEdge = false;
    //      }
    //    }
    //  }
    //}


    if (frameCount % 20 == 0) {
      if (hitEdge == true) {
        direction *= -1;
        for (int i = 0; i < numRows; i++) {
          for ( int j = 0; j < numCols; j++) {
            if (grid[i][j] != null) {
              //if (hitEdge == true){
              //grid[i][j] = new Invaders((i* 3 * size) + direction, j* 3 *size + 60, size, state); // moving
              //direction *= -1;
              grid[i][j].pos.x += direction;
              grid[i][j].pos.y += drop;
            }
          }
        }
      } else if (hitEdge == false) {
        for (int i = 0; i < numRows; i++) {
          for ( int j = 0; j < numCols; j++) {
            if (grid[i][j] != null) {
              grid[i][j].pos.x += direction;
            }
          }
        }
      }
      for (int i = 0; i < numRows; i++) {
          for ( int j = 0; j < numCols; j++) {
      if(user.state != ALIVE){
       direction = 0;
       drop = 0;
      }}}
            
          
          //  grid[i][j].pos.x += d;
          //  grid[i][j].pos.y += drop;
          //} else if (hitEdge == false) {

    //      for (int i = 0; i < numRows; i++) {
    //        for ( int j = 0; j < numCols; j++) {
    //          if (grid[i][j] != null) {
    //            //if (hitEdge == true){
    //            //grid[i][j] = new Invaders((i* 3 * size) + direction, j* 3 *size + 60, size, state); // moving
    //            direction *= -1;
    //            grid[i][j].pos.x += direction;
    //            grid[i][j].pos.y += drop;

    //            //}
    //            //else if (hitEdge == true && d < 0){
    //            //  grid[i][j].pos.x += d;
    //            //  grid[i][j].pos.y += drop;
    //            //} else if (hitEdge == false) {
    //            grid[i][j].pos.x += direction;
    //          }
    //        }
    //      }
    //    }
    //  }

    //  //for (int i = 0; i < numRows; i++) {
    //  //  for (int j = 0; j < numCols; j++) {
    //  //    grid[i][j].pos.x += direction;
    //  //  }
    //  //}
    //}
  }}
  
  
  void shoot() {
    int randomR = int(random(0, numRows));
    int randomC = int(random(0, numCols));
    if (frameCount % 150 == 0 && grid[randomR][randomC] != null) {
      Bullet g = new Bullet(grid[randomR][randomC].pos.x + size/2 , grid[randomR][randomC].pos.y, 1);
      swarmP.add(g);
      //shootCooldown = 45;
    }
  }
  }


  // need to create check if invenders get off the screen and move down.
