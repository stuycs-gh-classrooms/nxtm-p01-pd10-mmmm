class Bullets{
  
  char[] data;
  int size;
  
  //constructor
  Bullets(int capacity){
     data = new int[capacity];
     size = 0;
  }
  ListArray(){
    this(20);
  }
  
  //String toString(){
  //  String s = "[ ";
  //  for (int i = 0; i < size; i++){
  //    s += data[i] + " ";
  //  }
  //  s += "]";
  //  return s;
  //}
  
  void add(char c){
    data[size] = c;//add to the last index
    size++;
  }
  
  char get(int i){
    if (i < 0 || i >= size){
      return 0;
    }
    else{
      return data[i];
    }
  }
  
  int indexOf(char c){
    for (int i = 0; i < size; i++){
      if (data[i] == c){
        return i;
      }
    }
    return -1;
  }
}
