class Bucket {
  PVector loc;
  int b, diam;

  Bucket(float x, float y) {
    x=mouseX;
    y=mouseY;
    diam=50;
    loc = new PVector (mouseX, mouseY);
  }
  void display() {
    fill(0);
    ellipse(loc.x, loc.y, diam, diam);
  }
  
  void update(){
   loc.set(mouseX,mouseY); 
  }
}