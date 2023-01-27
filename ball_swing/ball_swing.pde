Ball b;
Mover m;
void setup(){
  size(600,400);
  //b=new Ball();
  m=new Mover();
}

void draw(){
  background(0);
  PVector p=new PVector(0,0.3);
  m.addForce(p);
  m.move();
  m.bounce();
  m.display();
  //b.move();
  //b.bounce();
  //b.display();
}
