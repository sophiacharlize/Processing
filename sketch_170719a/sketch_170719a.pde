void setup() {
  size(500,500);
  
}

void draw() {
  background(115,227,232);
  stroke(8, 10,10);
  noFill();
  for(int i=19; i>0; i--) {
  ellipse(250,250, i*30,i*30);
  
  if(i%2== 0) {
    fill(245, 30,30); 
  }
  else{
    fill(255,255,255);
  }
}}
