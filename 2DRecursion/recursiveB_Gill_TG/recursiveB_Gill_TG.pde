ArrayList<Window> windows = new ArrayList<Window>();

void setup(){
size(1000, 600);
windows.add(new Window());
}

void draw(){
background(0);


  drawWindows(700 ,445, 250);

  for (int i = 0; i < windows.size(); i++) {
    
  Window win= windows.get(i);
  win.display();
  }
  
  

}



void drawWindows(int x, int y, int z){
  stroke(-15);
  rectMode(CENTER);
 fill(255,0,0);  


  rect(mouseX,y, z+5, z);
  
  if(z > 14){
 pushMatrix();
  drawWindows(x, y/2 , z/2);
  drawWindows(x, y/2 , z/2);
popMatrix();
  
  }

      
}
