int XPos = 200;
int YPos = 375;
Car car1 = new Car(100,200, 20,10); 
Car car2 = new Car(300,300, 30, 5);
Car car3 = new Car(350, 80, 25, 10);


void setup() {
  size(400, 400);
}

void draw() {
  background(168, 234, 234);
  fill(151, 237, 184);
  ellipse(XPos, YPos, 40, 40);
  
  KeepOutside();
  
  car1.display();
  car2.display();
  car3.display();
  car1.moveLeft();
  car2.moveRight();
  car3.moveLeft();
  
  intersects(car1);
  
  if(intersects(car1)) {
    XPos= 200;
    YPos = 375;
  }
  
  intersects(car2); 
  
  if(intersects(car2)) {
    XPos = 200; 
    YPos = 375;
  }
 
 intersects(car3);
 
 if(intersects(car3)) {
   XPos = 200;
   YPos = 375; 
 }
  
}

void keyPressed() {
  if (key == CODED) {

    if (keyCode == UP) {
      YPos = YPos - 17;
    }
     else if (keyCode == DOWN) {
      YPos = YPos + 17;
     }
     else if (keyCode == RIGHT) {
      XPos = XPos + 17;
     }
     else if (keyCode == LEFT) {
      XPos = XPos - 17;
    }
  }
}

void KeepOutside () {
  
  if(XPos > 380) {
    XPos = 380;
  }
  else if(XPos < 20) {
  XPos = 20; 
  }
  else if(YPos > 380) {
    YPos = 380; 
  }
  else if(YPos < 20) {
    YPos = 20;
  } 
  
  
  
}

boolean intersects(Car car) {
      if ((YPos > car.getY() && YPos < car.getY()+50) && (XPos > car.getX() && XPos < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
}