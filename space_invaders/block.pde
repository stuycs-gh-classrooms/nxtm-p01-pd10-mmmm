class Block
{
  int size;
  int state;
  PVector pos;

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
  
  void die(){
    //if shot by a bullet (collision check), the 
  }
}
