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
    pos.y += direction;
  }

  boolean collisionCheck(Block b) {


    return(
      (pos.x < b.pos.x + b.size && pos.x > b.pos.x) &&//bullet's x is to the
      (pos.y < b.pos.y + b.size && pos.y > b.pos.y)
      );
  }

  boolean collisionCheck(Invaders inv) {
    if (inv != null) {
      return (
        (pos.x < inv.pos.x + 40 && pos.x > inv.pos.x) &&
        (pos.y < inv.pos.y + 40 && pos.y > inv.pos.y)
        );
    }
    return false;
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
