int XCircle=100;
int YCircle=250;
int XCircle2=400;
int YCircle2=250;
boolean reverse=false;

void setup() {
 size(500,500);
  
}


void draw() {
  background(255,255,255);
  noFill();
  for(int i=0; i<20; i++) {
    ellipse(XCircle,YCircle,i*10,i*10);
  }
  
  for(int i=0; i<20; i++) {
    ellipse(XCircle2, YCircle2, i*10, i*10);
  }
  if(!reverse){
    XCircle2=XCircle2-1;
    XCircle=XCircle+1;
  }
  else if(reverse){
    XCircle=XCircle-1;
  XCircle2=XCircle2+1;
  }
  
if(XCircle==XCircle2) {
  
  reverse=true;
}
}