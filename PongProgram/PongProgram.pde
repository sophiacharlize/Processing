int xpencil= 100;
int ypencil= 200;
int yspeed=2;
int ypencil2= 50; 
int ypencil3= 100;
int ballspeed= 2;
int ballx=250;
int bally=250;

void setup() {
  size(500,500);
  colorMode(HSB,360,100,100); 
 }

void draw() {
  background(0,0,0);
  fill(59,100,100);
  ellipse(ballx,bally, 50,50);
  ballx=ballx+ballspeed;
  bally=bally-ballspeed;
  fill(186,100,100);
  rect(0, mouseY, 25,100);
  rect(475, ypencil3, 25,100);
  if (ballx> 475 || ballx<25) {
    ballspeed= -ballspeed;}
    ballx=ballx+ballspeed;
  if (keyCode == UP) {
   ypencil3=ypencil3-yspeed;
}
if(keyCode == DOWN) {
  ypencil3=ypencil3+yspeed;
}

}