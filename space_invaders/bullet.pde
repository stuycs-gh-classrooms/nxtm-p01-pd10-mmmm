class Bullet
{
  int w = 2;
  int l = 4;
  PVector pos;
  int direction;

  Bullet(float x, float y, int d) {
    pos = new PVector(x, y);
    direction = d;
  }

  void display() {
    fill(255);
    rect(pos.x, pos.y, w, l);
  }

  void move() {
    pos.x += direction;
  }

  boolean collisionCheck(Block b) {


    return(
      pos.x < b.pos.x + b.size &&
      pos.x + w > b.pos.x &&
      pos.y < b.pos.y + b.size &&
      pos.y + l > b.pos.y
      );
  }

  boolean collisionCheck(Invaders inv) {
    return (
      pos.x < inv.pos.x + inv.size &&
      pos.x + w > inv.pos.x &&
      pos.y < inv.pos.y + inv.size &&
      pos.y + l > inv.pos.y
      );
  }

  boolean collisionCheck(Player p) {
    return (
      pos.x < p.pos.x + p.size &&
      pos.x + w > p.pos.x &&
      pos.y < p.pos.y + p.size &&
      pos.y + l > p.pos.y
      );
  }
}
