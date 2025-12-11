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

  //void move(int direction) {
    /*if (keyPressed) {
    if (keyCode == LEFT) {
      user.move(-direction);
    }
    
    if (keyCode == RIGHT) {
      user.move(direction);
    }
    if (keyCode == ' ') {
      user.shoot();
    } 
  }
  }*/

<<<<<<< HEAD
  void shoot(int x) {
    while (x != 0) {
      n = new Bullet(pos.x, pos.y, -1);
      projectiles.add(n);
      x--;
    }
    delay(2);
=======
  void shoot() {
    n = new Bullet(pos.x + size/2 + 4, pos.y, -1);
    projectiles.add(n);
>>>>>>> 9b4a2db4ccfcbd9244d57efb9bc6d0678bd8a98e
  }
}
