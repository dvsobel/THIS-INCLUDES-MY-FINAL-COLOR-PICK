//going to create a square in the middle to change the backgrounds color, look at drawing example to do this

color bgColor; //also one up here

void setup(){
  size(500,500);
  bgColor=0;//black
}


void draw(){
  background(bgColor);
  
  //button
  stroke(255, 0, 0);
  fill(255);
  rectMode(CENTER); //puts button in center (small square)
  rect(width/2, height/2, 50, 50); //center
  
  //button2
  stroke(255,0,0);
  fill(255);
  rect(width/2, height-100, 50, 50);
  
  
  
  //conditionfirst
  if(mousePressed){
    if(mouseX>(width/2 -25) && mouseX<(width/2+25) && mouseY > (height/2-25) && mouseY<(height/2+25)){
  bgColor=255;
  }
  }
  //second
  if(mousePressed){
    if (mouseX>(width/2-50) && mouseX<(width/2+50) && mouseY > (height/2-50) && mouseY<(height/2+50)){
      //fill(0);
}
}
}