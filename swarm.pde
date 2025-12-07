class Swarm{
  Invaders[][] grid;
  int size;
  int state;
  int numRows;
  int numCols;
  
  Swarm(int numRows, int numCols){
    grid = new Invaders[numRows][numCols];
    size = 30;
    state = ALIVE;
    
    for (int i = 0; i < numRows; i++){
      for (int j = 0; j < numCols; j++){
        grid[i][j] = new Invaders(i*size,j*size, size, state);
      }
    }
  }
  
  void display(){
    for (int i = 0; i < numRows; i++){
      for (int j = 0; j < numCols; j++){
        grid[i][j].display();
      }
    }
  }
  
  
}
