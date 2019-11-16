float circleX = 0;
float circleY = 0;
float cSpeed = 0;
float cGravity = 0;

void setup(){
  size(720,460);
  
  circleX=360;
  circleY=100;
  cSpeed=0;
  cGravity=0.5;
}

void draw(){
  background(#0DBFA8); 
  fill(#AFBF0D);
  

  stroke(#AFBF0D);
  ellipseMode(CENTER);
  ellipse(circleX,circleY,50,50);
  
  circleY=circleY+cSpeed;
  
  cSpeed=cSpeed+cGravity;
  
  if (circleY > height){      //wie bleibt der Ball liegen?
    cSpeed=cSpeed*-0.8;
   }
}
