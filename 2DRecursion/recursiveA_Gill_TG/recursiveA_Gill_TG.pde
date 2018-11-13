ArrayList<Triangle> tri;
int triangleWidth = 500;
  float x1;
  float y1;
  float x2;
  float y2;
  float x3;
  float y3;
  float speed;
  float duration = 255;
  
void setup(){
size(1000, 800);
tri = new ArrayList<Triangle>();
tri.add(new Triangle(width/2, height/2, x2, y2, x3, y3));

}

void draw(){
background(255);
pushMatrix();
  background(215);
  drawTriangle(width/2, height/2, x2, y2, x3, y3);
   popMatrix();
  
for (int i = tri.size()-1; i >= 0; i--) { 
  Triangle triangle = tri.get(i);
  triangle.move();
  triangle.display();
  if (triangle.finished()) {
  
      tri.remove(i);
}
  
}

}

void mousePressed() {

  tri.add(new Triangle(mouseX, mouseY, width/2, height/2, x1, triangleWidth/2));
}
void drawTriangle(float x1, float y1, float x2, float y2, float x3, float y3){
  stroke(0);
  noFill();

}
  
