import processing.sound.*;

SqrOsc sqr;
boolean clicked=true;
boolean mute=false;

void setup(){
 size(700,400); 
 background(159);
 
 sqr=new SqrOsc(this);
}

void draw(){

  if(!mute){
    sqr.play();
    float frequency = map(mouseY,0,height,1000,200);
    sqr.freq(frequency);
  
    if(clicked){
    float amplitude = map(mouseX,0,width,1.0,0.0);
    sqr.amp(amplitude);
    }
    else{
    float panning = map(mouseX,0,width,-1.0,1.0);
    sqr.pan(panning);
    }
  }else{
    sqr.stop();
  }
}

void mousePressed(){
  clicked=!clicked;
}

void keyPressed(){
  if(key=='m' || key=='M' || key==TAB);
    mute=!mute;
}
