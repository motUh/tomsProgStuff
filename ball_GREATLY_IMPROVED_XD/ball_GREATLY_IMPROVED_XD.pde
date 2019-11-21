ArrayList<Ball> balls = new ArrayList();
PImage img;

void setup(){
 size(720,460);
 background(#C16D06);
 img = loadImage("eggdog_face.png");
}



void draw(){
  
  background(#C16D06);
  for (Ball b: balls)   b.run();
}

void mousePressed(){
  
 if(balls.size()<10){
 balls.add(new Ball(pmouseX,pmouseY)); 
 println(balls.size());
 }
}
