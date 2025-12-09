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
      rect(x,y, sz * 1.5, sz);// body 
  rect( x + sz/4, y,  sz / 5 , - sz/ 4);
  rect( x + 4 * sz/4, y,  sz / 5 , - sz/ 4);
  rect( x + 4 * sz/4, y + sz,  sz / 5 , sz/ 3); // right 
  rect( x + sz/4, y + sz,  sz / 5 , sz/ 3);
  rect( x, y + sz * .25, -sz / 3, sz /3); // left arm
  rect( x + sz * 1.5, y + sz * .25, sz / 3, sz /3); // right arm
  fill(0,0,0);
  square( x + sz/4, y + sz/4, sz/3); // eye 
  square( x + sz, y + sz/4, sz/3);// eye
    }
  }
}


