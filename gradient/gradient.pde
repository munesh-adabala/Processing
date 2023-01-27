void setup(){
  size(1080,720);
}


void draw(){
  int offset = width/255;
  int prev = 0;
  int current = offset;
  for(int i=1;i<256;++i){
    fill(i,i,0);
    rect(0,prev,1080,current);
    prev = current;
    current+=offset;
  }
}
