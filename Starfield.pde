
class Walker {
  float myX, myY, mySize, mySpeed, myAngle;
  Walker(){
    myX = 250;
    myY = 250;
    mySize = 5;
    mySpeed = (float)(Math.random()*30)+1;
    myAngle = (float)(Math.random()*2*Math.PI);
  }
  void explode() {
    myX = myX + (float)(Math.cos(myAngle)*mySpeed);
    myY = myY + (float)(Math.sin(myAngle)*mySpeed);
  }
  void show() {
    fill(255,255,255);
    ellipse(myX,myY,mySize,mySize);
  }
}
class OddballWalker extends Walker {
  OddballWalker(){
    myX = 0;
    myY = (int)(Math.random()*500);
    mySize = 10;
    mySpeed = (float)(Math.random()*10)+1;
    myAngle = (float)(Math.random()*2*Math.PI);
  }
  void showN(){
    fill(100,100,100);
    ellipse(myX,myY,mySize+20,mySize+20);
  }
  void explodeN() {
    myX = myX + (int)(Math.random()*10);
    myY = myY + (int)(Math.random()*10);
  }
}
Walker [] bob = new Walker[1000];
OddballWalker bro = new OddballWalker();
void setup(){
  size(500,500);
  for(int i = 0; i < bob.length; i++){
    bob[i] = new Walker();
  }
}
void draw(){
  background(0,0,0);
  for(int i = 0; i < bob.length; i++){
    bob[i].explode();
    bob[i].show();
  }
  bro.explodeN();
  bro.showN();
}
void mouseClicked(){
  for(int i = 0; i < bob.length; i++){
    bob[i] = new Walker();
  }
  bro = new OddballWalker();
}
