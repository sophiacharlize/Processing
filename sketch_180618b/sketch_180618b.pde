int BirdX = 100; 
int BirdY = 50;
int YSpeed = 6;
int gravity = 1;
int PipeX = 300;
int PipeY = 0;
int PipeHeight = 200;
int PipeHeight2 = 500;
int PipeX2 = 50;
int PipeY2 = 420;
int score = 0; 


void setup() {
  size(500,500); 
  
  
}

void draw() {
  background(164,242,241);
  fill(255,234,41);
  ellipse(BirdX,BirdY,40,40);
  
  BirdY = BirdY + YSpeed + gravity;
 if(mousePressed) {
   mousePressed();
 }
 fill(227,44,68);
 rect(PipeX, PipeY, 50,PipeHeight);
   PipeX = PipeX - 5;
   
 fill(227,44,68); 
 rect(PipeX2, PipeY2, 30,PipeHeight2);
 PipeX2 = PipeX2 + 8;
 PipeY2 = PipeHeight + PipeY + 175;
 
 teleportPipes();
 
 if(intersectsPipes()) {
    YSpeed = 0;
    gravity = 0;
    exit();
  }
  
  fill(2, 196, 10); 
  rect(-10, 470, 550, 30);
  
  if(BirdY > 470) {
    exit();
  }
  
  fill(0,0,0);
  textSize(20);
  text("score: " + score, 300, 25); 
  
  
}

void mousePressed() {
  BirdY = BirdY - YSpeed - gravity - 10;
 
}

void teleportPipes() {
  if(PipeX <= 0) {
    PipeX = 500;
    PipeHeight = (int) random(100,400);
   score = score +1;
  }
  
  if(PipeX2 >= 500) {
    PipeX2 = 0;
    PipeHeight2 = (int) random(100,400); 
     
  }
  
   
 
}

boolean intersectsPipes() { 
     if (BirdY < PipeHeight && BirdX > PipeX && BirdX < (PipeX+50)){
          return true; 
        
      }
     else if (BirdY>PipeY2 && BirdX > PipeX && BirdX < (PipeX+50)) {
          return true; 
        
      }
     else { 
       return false; 
       
 }
     
    
}