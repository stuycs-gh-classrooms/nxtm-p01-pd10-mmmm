class Bullets{
  
  Bullet[] data;
  int size;
  
  //constructor
  Bullets(int capacity){
     data = new Bullet[capacity];
     size = 0;
  }
  //Bu(){
  //  this(20);
  //}
  
  //String toString(){
  //  String s = "[ ";
  //  for (int i = 0; i < size; i++){
  //    s += data[i] + " ";
  //  }
  //  s += "]";
  //  return s;
  //}
  
  void add(Bullet c){
    data[size] = c;//add to the last index
    size++;
  }
  
  
  int indexOf(Bullet c){
    for (int i = 0; i < size; i++){
      if (data[i] == c){
        return i;
      }
    }
    return -1;
  }
}
