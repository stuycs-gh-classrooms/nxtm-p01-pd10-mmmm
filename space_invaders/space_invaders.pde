// To: fix bullet position, check on block die, make the swarm, points + lives

int ALIVE = 1;
int DEAD = 0;
int numBlocks = 5;
int points = 0;
Block[] obstacles;
Bullets projectiles;
Swarm invaders;
Player user; // a new player which is teh user
//Block five; // three just bc five squares =  one block
//need to add a list array for the bullets?
void setup() {
  size(500, 500);
  projectiles = new Bullets(20000000);
  user = new Player(width/2, height-60, 50, ALIVE);
  invaders = new Swarm(4,4);
  obstacles = new Block[numBlocks];
  for (int i = 0; i < numBlocks; i++) {
    int s = width / 5;
    obstacles[i]= new Block(25+ s * i, 350, 35, ALIVE);
  }


  //five = new Block(x, y, 50, 0); // Im still kinda confused to as to how you want to the five squares make one
  //fill(0, 255, 0);
  //line(0, height -20, width, height - 20); // style for screen
}
void draw() {
  background(0);
  user.display(); //Cannot make a static reference to the non-static method display() from the type block.Bullet --> fixed by doing Player user. user is a new instence of the Player class.
  user.move();
  user.shoot(); 
  for (int i = 0; i < obstacles.length; i++) {
    if (obstacles[i] != null) {
      obstacles[i].display();
    }
  }
  for (int i = 0; i < projectiles.size; i++) {
    Bullet b = projectiles.data[i];
    if (b != null) {
      b.move();
      b.display();
    }
  }
  for (int i = 0; i < obstacles.length; i++) {
    Block square = obstacles[i];

    if (square != null) {
      for (int j = 0; j < projectiles.size; j++) {
        Bullet bul = projectiles.data[j];

        if (bul != null && bul.collisionCheck(square)) {
          square.health--;
          if (square.health <= 0) {
            obstacles[i] = null;   // destroy block
          }
        }
      }
    }
  }
  fill(0, 255, 0);
  line(0, height -30, width, height - 30); // style for screen
  line(0, 50, width, 50);
  invaders.display();
}

void move() {
  if (keyPressed) {
    if (keyCode == LEFT) {
      user.pos.x-=1;
    }
    if (keyCode == RIGHT) {
      user.pos.x+=1;
    }
  }
}
