
RainDrop[] drops;
int DROPS_NUM = 500;

void setup(){
  fullScreen();
  fill(0);
  drops = new RainDrop[DROPS_NUM];
  for(int i=0;i<DROPS_NUM;++i){
    drops[i] = new RainDrop();
  }
}

void draw(){
  fill(0,50);
  rect(0,0,width,height);
  for(int i=0;i<DROPS_NUM;++i){
    if(drops[i].y > drops[i].endPos){
      drops[i].end();
    }else{
    drops[i].display();
    }
  }
}

class RainDrop{
  float x,y,speed;
  color c;
  float ellipseX,ellipseY;
  float endPos;
  RainDrop(){
    init();
  }
  
  void init(){
    x = random(width);
    y = random(-300,0);
    speed = random(2,5) * 2;
    c = color(random(255),random(255),random(255));
    ellipseX = 0;
    ellipseY = 0;
    endPos = height - random(300);
  }
  
  void update(){
    y+=speed;
  }
  
  void display(){
    fill(c);
    noStroke();
    rect(x,y,2,15);
    update();
  }
  
  void end(){
    stroke(c);
    noFill();
    ellipse(x,y,ellipseX,ellipseY);
    ellipseX += speed * 0.5;
    ellipseY += speed * 0.2;
    if(ellipseX>30){
      init();
    }
  }
}
