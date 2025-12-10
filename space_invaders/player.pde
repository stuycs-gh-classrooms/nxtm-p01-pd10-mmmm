class Player { //needs to be able to die
  int size;
  int state;
  PVector pos;
  int health = 3;
  Bullet n;

  Player(int x, int y, int sz, int st) {
    pos = new PVector(x, y);
    size = sz;
    state = st;
  }

  void display() {
    fill(0, 255, 0);
    stroke(0, 255, 0);
    rect(pos.x + 10, pos.y, 40, 15);
    rect(pos.x + 25, pos.y -5, 10, 5);
    rect(pos.x + 27, pos.y - 7, 6, 8);
    rect(pos.x+ 29, pos.y - 13, 2, 10);
  }

  void move() {
    if (keyPressed) {
      if (keyCode == LEFT) {
        pos.x -= 1;
      }
      if (keyCode == RIGHT) {
        pos.x += 1;
      }
    }
  }

  void shoot() {
    if (keyPressed) {
      if (keyCode == ' ') {
        n = new Bullet(pos.x, pos.y, -1);
        projectiles.add(n);
      }
    }
  }
  
  
}
