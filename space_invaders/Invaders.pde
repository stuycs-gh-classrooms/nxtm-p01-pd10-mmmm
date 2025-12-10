class Invaders {//1 class for invaders to allow for 1 swarm class. must decide which kind of invader/attributes within this class.
  int size;// missing the characteristics of invaders. should die when bullet.collisionCheck() = TRUE
  int state;
  PVector pos;

  Invaders(int x, int y, int sz, int st) {
    pos = new PVector(x, y);
    size = sz;
    state = st;
  }

  void display() {
    if (state == ALIVE) {
      fill(0,255,0);
      rect(pos.x, pos.y, size * 1.5, size);// body
      rect(pos.x + size/4, pos.y, size / 5, - size/ 4);
      rect(pos.x + 4 * size/4, pos.y, size / 5, - size/ 4);
      rect(pos.x + 4 * size/4, pos.y + size, size / 5, size/ 3); // right
      rect(pos.x + size/4, pos.y + size, size / 5, size/ 3);
      rect(pos.x, pos.y + size * .25, -size / 3, size /3); // left arm
      rect(pos.x + size * 1.5, pos.y + size * .25, size / 3, size /3); // right arm
      fill(0, 0, 0);
      square(pos.x + size/4, pos.y + size/4, size/3); // eye
      square(pos.x + size, pos.y + size/4, size/3);// eye
    }
  }
}
