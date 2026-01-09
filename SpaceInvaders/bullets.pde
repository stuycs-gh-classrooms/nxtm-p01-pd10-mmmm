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
  
  Bullet remove(int i) {
    if (i < 0 || i >= size) {
      return null;
    }
    Bullet removed = data[i];
    for (int j = i; j < size-1; j++) {
      data[j] = data[j+1];
    }

    size--;
    return removed;
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
