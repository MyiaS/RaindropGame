class Raindrop {
  PVector loc, vel, a;
  int r, diam;

  Raindrop( float x, float y) {
    x=0;
    y=random(height);
    diam = 20;
    loc = new PVector(random(diam, width-diam), 0);
    vel= new PVector(0, random(0, -10));
    a= new PVector(0, 0.001);
  }


  void fall() {
    loc.add(vel);
    vel.add(a);
  }


  void display() {
    fill(255);
    ellipse(loc.x, loc.y, diam, diam);
  }
  boolean isInContactWith(Bucket thing) {
    if (loc.dist(thing.loc)<diam/2 +thing.diam/2) {
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    loc.y=0;
    loc.x=random(width);
  }
}