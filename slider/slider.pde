//made a slider

//how to import a library...library p5

import controlP5.*;
ControlP5 jControl; 
//a class that they made for us

int bgColor; //a variable

void setup(){
  size(600,600);
  
  jControl= new ControlP5(this);
  
  Slider s= jControl.addSlider("bgColor", 0, 255, 100, 10, 10, 100, 10);
  
 
}

void draw(){
  background(bgColor);
}