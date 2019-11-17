class Ball{
  float x;
  float y;
  float cx;
  float cy;
  float speed=0;
  float gravity=0;
  float size=0;
  
  
  Ball(float x, float y){
    cx=x;
    cy=y;
    size=50;
    speed=0;
    gravity=0.2;
  }
  
  void run(){
    display();
    velocity();
    bounce();
    bounce();
    bounceStop();
  }
  
  void display(){
   
   stroke(255);
   fill(#6CE3B6);  //0,255,150
   ellipseMode(CENTER);
   ellipse(cx,cy,size,size);
   //println("s ", speed,"    s + g", speed+gravity,"    s * g",speed*gravity);
   //println(y);
  }
  
  void velocity(){
    
    cy+=speed;
    speed+=gravity;
  }
    
  void bounce(){
    
   if(cy>height-25){
    cy=height-25; 
    speed*=-0.6;
     }
   }
   
  void bounceStop(){
    
    if(speed*gravity>-0.15 && speed*gravity<0 && cy==435){
      speed=0;
      gravity=0;
      cy=435;
      //println("      HERE      ");
    }
  }
  
}
