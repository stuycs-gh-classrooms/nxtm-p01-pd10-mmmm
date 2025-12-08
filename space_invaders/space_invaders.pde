//this will be DRIVER FILE. currently a hectic mess

int Pstart_x;
int Pstart_y;
int ALIVE = 1;
int DEAD = 0;
//need to add a list array for the bullets?
void setup() {
  size(500, 500);
  Pstart_x = width/3;
  Pstart_y=height - height/10;
}
void draw() {
  background(0);
  Player(Pstart_x, Pstart_y );
  move();
  block();
  fill(0,255,0);
  line(0,height -20, width, height - 20);
}
void Player(int x, int y) {
  fill(0, 255, 0);
  stroke(0, 255, 0);
  rect(x + 10, y, 40, 15);
  rect(x + 25, y -5, 10, 5);
  rect(x + 27, y - 7, 6, 8);
  rect(x+ 29, y - 13, 2, 10);
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

void block(){
  fill(0,255,0);
  int s = 0;
  for(int i = 0; i<3; i++){
  rect(width/8 + s, height - height/4.5, 10,30);
  rect(width/8 + s, height - height/4.5, 30,10);
  rect(width/8 + 30 +s, height - height/4.5, 10,30);
  s = s + width/3;
}
}

