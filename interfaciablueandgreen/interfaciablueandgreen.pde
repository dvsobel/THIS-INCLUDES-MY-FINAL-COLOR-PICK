//first we import it.

import interfascia.*;

GUIController c;

IFButton b1, b2;

void setup(){
  size(200, 100);
  background(255);
  
  //nitialise the object
  c=new GUIController(this);
  
  //buttons
  b1=new IFButton("Green", 30, 35, 60, 30);
  b2= new IFButton("Blue", 110, 35, 60, 30);
  
  b1.addActionListener(this);
  b2.addActionListener(this);
  
  c.add(b1);
  c.add(b2);
  
}
  
  void draw(){
    
  }
  
  void actionPerformed(GUIEvent e){
  if(e.getSource()==b1){
    background(100,155, 100);
  
  } else if (e.getSource()==b2){
    background(100,100,130);
  }
  }