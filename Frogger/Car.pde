
class Car {
int X;
int Y; 
int size; 
int speed; 

 


  Car(int X, int Y, int size, int speed) {
    this.X = X; 
    this.Y = Y; 
    this.size = size; 
    this.speed = speed; 
    
  }
void display() {
  fill(0,255,0);
  rect(X,Y, size, 50); 

}

void moveLeft () {
  X = X - speed; 
  
  if(X > 400 || X < 0 || Y > 400 || Y < 0) {
    X = 400 - size;
  }
  
}

void moveRight () {
  X = X + speed;
  
  if(X > 400 || X < 0 || Y > 400 || Y < 0) {
    X = 0;  
}
}

int getX() {
  return X;
}

int getY() {
  return Y;
}

int getSize() {
  return size;
}

}