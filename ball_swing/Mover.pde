class Mover{
  PVector location;
  PVector velocity;
  PVector acc;
  Mover(){
    location=new PVector(width/2,height/2);
    velocity=new PVector(0,0);
    acc=new PVector(0,0);
  }
  
  void move(){
    velocity.add(acc);
    location.add(velocity);
    acc.mult(0.7);
  }
  
  void addForce(PVector f){
    acc.add(f);
  }
  
  void bounce(){
    if(location.x>=width){
      location.x=width;
      velocity.x=velocity.x*-1;
    }
    
    if(location.x<=width/2){
      location.x=width/2;
      velocity.x=velocity.x*-1;
    }
    
    if(location.y>=height){
      location.y=height;
      velocity.y*=-1;
    }
    
    if(location.y<=0){
      location.y=0;
      velocity.y=velocity.y*-1;
    }
  }
  
  void display(){
    fill(0,255,0);
    ellipse(location.x,location.y,40,40);
  }
}
