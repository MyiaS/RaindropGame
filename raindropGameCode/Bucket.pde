class Bucket {
  PVector loc;
  int b, diam;

  Bucket(float x, float y) {
    x=mouseX;
    y=mouseY;
    diam=200;
    loc = new Pvector (mouseX,mouseY);
  }
  void catcher(float x, float y) {
    diam=200;
    fill(0);
    ellipse(x, y, diam, diam);
  }
  boolean isIncontactWith(Bucket b){
    if(loc.dist(b.loc)<diam/2 +b.diam/2){
      return true;
 }
 else {
   return false;
 }
  }
}