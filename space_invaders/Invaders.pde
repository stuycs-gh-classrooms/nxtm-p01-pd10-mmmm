class Invaders{//1 class for invaders to allow for 1 swarm class. must decide which kind of invader/attributes within this class.
  int size;// missing the characteristics of invaders. should die when bullet.collisionCheck() = TRUE
  int state;
  PVector pos;
  
  Invaders(int x, int y, int sz, int st){
    pos = new PVector(x,y);
    size = sz;
    state = st;
  }
  
  void display(){
    if (state == ALIVE){
      circle(pos.x, pos.y, size);
    }
  }
}

