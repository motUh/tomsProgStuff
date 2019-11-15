float circleX = 0;
float circleY = 0;
float cSpeed = 0;

void setup(){
  size(720,460);
  
  circleX=360;
  circleY=200;
  cSpeed=2;
}

void draw(){
  background(#0DBFA8); 
  fill(#AFBF0D);
  
  rectMode(CENTER);
  stroke(#AFBF0D);
  ellipse(circleX,circleY,50,50);
  
  circleY=circleY+cSpeed;
}
