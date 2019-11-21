import processing.sound.*;
Sound s;

SinOsc sine;
int a =200;
boolean play = true;
boolean pan = false;

void setup(){
 size(700,400);
 background(100);
 s = new Sound(this);
 sine = new SinOsc(this);
 
}

void draw(){
  if (play){                                        //ist play true, funktioniert sine ganz normal
    sine.play();
  
    sine.freq(a+(mouseY*2));
  
    if (!pan){                                      //ist pan false, wird die Amplitude beeinflusst
      float amplitude = map(mouseX,0,width,1.0,0.0);
      s.volume(amplitude);
    }else{                                          //ist pan true, wird das panning beeinflusst
      sine.pan(map(mouseX,0,width,-1.0,1.0)); 
    }
  }else{
    sine.stop();                                    //ist play false, wird sine gestoppt
  }
}

void mousePressed(){                                //Wechsel zwischen Amplitude und Panning
  pan=!pan;
  if (pan){
    println("pan ist",pan, ": Panning wird beeinflusst");                                     
  }else{
    println("pan ist",pan, ": Amplitude wird beeinflusst"); 
  }
}


void keyPressed(){                                  //Stoppt bzw. startet sine
  if(key == ' '){ 
     play = !play;
     if (play){
       println("play ist",play, ": sine ist zu hören");
      }else{
       println("play ist",play, ": sine ist nicht zu hören");
      }
      
  }
}
