int XPos = 200;
int YPos = 375;
Car car1 = new Car(100,200, 20,10); 
Car car2 = new Car(300,350, 30, 5);
int frogY;
int frogX;


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
  car1.moveLeft();
  car2.moveRight();
}

void keyPressed() {
  if (key == CODED) {

    if (keyCode == UP) {
      YPos = YPos - 10;
    }
     else if (keyCode == DOWN) {
      YPos = YPos + 10;
     }
     else if (keyCode == RIGHT) {
      XPos = XPos + 10;
     }
     else if (keyCode == LEFT) {
      XPos = XPos - 10;
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
      if ((frogY > car.getY() && frogY < car.getY()+50) && (frogX > car.getX() && frogX < car.getX()+car.getSize()))
      {
             return true;
      }
      else 
      {
             return false;
      }
}