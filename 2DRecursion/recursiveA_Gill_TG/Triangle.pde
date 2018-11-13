class Triangle {
  
  float x1;
  float y1;
  float x2;
  float y2;
  float x3;
  float y3;
  float duration= 255;

  
  Triangle(float tempx1, float tempy1, float tempx2, float tempy2, float tempx3, float tempy3) {
    x1 = tempx1;
    y1 = tempy1;
    x2 = tempx2;
    y2 = tempy2;
    x3 = tempx3;
    y3 = tempy3;
  
    speed = 0;
 
  }
    void move() {
   
    y1 = y1 + speed;

    if (y1 > height) {


      y1 = height;
    }
  }
  
  boolean finished() {

    duration--;
    if (duration < 0) {
      return true;
    } else {
      return false;
    }
  }
 
  void display() {
  
    fill(0,duration);


    
    triangle(mouseX, mouseY, width/2, height/2, x1, triangleWidth/2);

  }

}
