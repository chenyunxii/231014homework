PImage img;
float unit=5.8;
void settings() {
  img=loadImage("pdx(1).jpg");
  size(img.width, img.height);
}
void draw() {
  background(255);
  image(img, 0, 0);

  //if (mouseButton==LEFT) {
  //  unit+=0.01;
  //}
  //if (mouseButton==RIGHT) {
  //  unit-=0.01;
  //}
  println(unit);
  for (int i=mouseX; i>0; i-=6*unit) {
    stroke(0);
    strokeWeight(5*unit);
    line(i, 0, i, height);
  }
  for (int i=mouseX; i<width; i+=6*unit) {
    stroke(0);
    strokeWeight(5*unit);
    line(i, 0, i, height);
  }
  //fill(0);
  //rect(mouseX,0,width-mouseX,height);
  saveFrame();//
}
