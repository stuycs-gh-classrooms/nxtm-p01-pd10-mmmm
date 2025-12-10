class Block
{
  int size;
  int state;
  PVector pos;
  int health = 4;

  Block(int x, int y, int sz, int st)
  {
    pos = new PVector(x, y);
    size = sz;
    state = st;
  }

  void display() {
    fill(0, 255, 0);
    square(pos.x, pos.y, size);//will just make squares, each one of the blocks near the front will just be 5 preset squares
  }

  //void die() {
  //  //if shot by a bullet (collision check), the
  //  int count = 0;
  //  for (int i = 0; i < obstacles.length; i++) {
  //    if (obstacles[i] != null) {
  //      for (int j = 0; j< projectiles.size; j++) {
  //        if (projectiles[j].collisionCheck(obstacles[i])) {
  //          fill(random(0, 256), random(0, 256), random(0, 256)); //we NEED to fix this
  //          count ++;
  //        }
  //        if ( count == 4 ) {
  //          obstacles[i] = null;
  //        }
  //      }
  //    }
  //  }
  //}
}
