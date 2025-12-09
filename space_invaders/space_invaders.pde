int Pstart_x;
int Pstart_y;
int ALIVE = 1;
int DEAD = 0;
Player user; // a new player which is teh user
Block five; // three just bc five squares =  one block
//need to add a list array for the bullets?
void setup() {
  size(500, 500);
  Pstart_x = width/3;
  Pstart_y= height - height/10;
  user = new Player(Pstart_x, Pstart_y, 50, 0);
 // four = new Block(x, y, 50, 0); // very wrong coords
   fill(0,255,0);
  line(0,height -20, width, height - 20);
}
void draw() {
  background(0);
  user.display(); //Cannot make a static reference to the non-static method display() from the type block.Bullet
  user.move();
  user.shoot();
  five.display();
  five.die(); // okay so i did up to player and block. 


}

void move() {
  if (keyPressed) {
    if (keyCode == LEFT) {
      Pstart_x= Pstart_x-1;
    }
    if (keyCode == RIGHT) {
      Pstart_x= Pstart_x+1;
    }
  }
}
