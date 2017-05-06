PImage person;

void setup() {
  person=loadImage("mrguess.JPG");
  size(500,500);
  colorMode(HSB, 360,100,100);
  background (185,100,90);
}
  void draw() {
    fill(0, 90,60);
    rect(50,250, 400,300);
    fill(0, 90, 60);
    triangle(30,250, 250,80, 470, 250);
    rect(100,350, 300, 500);
    rect(100,350, 150, 500);
    fill(0,0,0);
    ellipse(235, 430, 10,10);
    ellipse(265, 430,10,10);
    fill(0,0,100,60);
    rect(285, 260, 70,85);
    image(person, 290,265);
    ellipse(100,50);
  }
