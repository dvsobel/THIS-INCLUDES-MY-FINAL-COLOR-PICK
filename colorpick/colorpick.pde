//Final Project
//MFA DT Bootcamp 2016

//resources-Aditi, processing.org, controlp5 library

color[] picker = {#FF0000, #FF8100, #FFD915, #30EB13, #0B2C79, #4C0679, #FFFFFF, #000000};

color currentColor = #000000;

PShape triangle;//pshape object
PShape square;//pshape object

int brushSize = 10;
int shapeTracker =0;

void setup(){
  size(500,500);
  background(255);
  
  
}


void draw(){
  noFill();
  rect(width-25, height, 50,100);
  text("clear", width-35, height - 10);
  
  ////draw shapes on canvas
  fill(255);
  stroke(0);
  rectMode(CENTER);
  ////shapes for each square
      
  rect(25,25,50,50);
  
  rect(25, 75, 50, 50);
  
  rect(25,125,50,50);
  
  rect(25,175, 50, 50);
  
  for (int i = 0; i < picker.length; i++){
    fill(picker[i]);
    rect(25 + (i * 50), height, 50, 100);
  }
  
  if(mousePressed){
    fill(currentColor);
    noStroke();
    ellipse(mouseX, mouseY, brushSize , brushSize);
  
  
    //for the shape array side bar
    if (shapeTracker==1){
      stroke(0);
      ellipse (mouseX, mouseY, 100, 100);
    }
  
    if(shapeTracker==2){
      stroke(0);
      line(mouseX, mouseY, 22,10);
    }
  
    if(shapeTracker==3){
      stroke(0);
      triangle(mouseX, mouseY, 200,200, 450 , 234);
    }
  
    if(shapeTracker==4){
      stroke(0);
      rect(mouseX, mouseY, 300,300);
    }
  }
  
}
  
void mousePressed(){
 
  //clear the current drawing
  if((mouseX > 450) && (mouseY > 450)){
   background(255);
  }
  
  //change color to red
  if((mouseX < 50) && (mouseY > 450)){
   currentColor = picker[0]; 
  }
  
  //change color to orange
  if((mouseX > 50) && (mouseX < 100) && (mouseY > 450)){
   currentColor = picker[1]; 
  }
  
  //change color to yellow
  if((mouseX > 100) && (mouseX < 150) && (mouseY > 450)){
   currentColor = picker[2]; 
  }
 
  //change color to green
  if((mouseX > 150) && (mouseX < 200) && (mouseY > 450)){
   currentColor = picker[3]; 
  }
  
   //change color to blue
  if((mouseX > 200) && (mouseX < 250) && (mouseY > 450)){
   currentColor = picker[4]; 
  } 
  
   //change color to purple
  if((mouseX > 250) && (mouseX < 300) && (mouseY > 450)){
   currentColor = picker[5]; 
  } 
  
  //change color to white
  if((mouseX > 300) && (mouseX < 350) && (mouseY > 450)){
   currentColor = picker[6]; 
  } 
  
   //change color to black
  if((mouseX > 350) && (mouseX < 400) && (mouseY > 450)){
   currentColor = picker[7]; 
  } 
  
  //drawing shapes

  //1st shape
  if((mouseX>0) && (mouseX < 50) && (mouseY<50) && (mouseY>0)){
    shapeTracker = 1;
  }

  //2nd shape
  if( (mouseX>0) && (mouseX < 50) && (mouseY>50) && (mouseY<100)){
    shapeTracker =2;
  }

  //3rd shape
  if((mouseX>0) && (mouseX < 50) && (mouseY>100) && (mouseY<150)){
    shapeTracker=3;
  }

  //4th shape
  if((mouseX>0) && (mouseX < 50) && (mouseY>150) && (mouseY<200)){
    shapeTracker=4;
  }
}


void keyPressed() {
 
  if(key == CODED){
    if(keyCode == UP){
      if(brushSize + 10 < 100){
     brushSize += 10; 
      }
    }
  }
    
   if(key == CODED){
    if(keyCode == DOWN){
      if(brushSize - 10 > 0){
     brushSize -= 10; 
      }
    }
   }
 
}