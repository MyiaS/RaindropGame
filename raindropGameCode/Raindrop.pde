class Raindrop {
  PVector loc,vel;
  int r,diam;
  
  Raindrop( float x, float y){
    x=0;
    y=random(height);
     diam = 20;
    loc = new PVector(random(diam, width-diam), random(diam, height-diam));
    vel= PVector.random2D();
    vel.mult(2);
  }
  

void fall(){
  loc.sub(vel);
}


void display(){
    noStroke();
    ellipse(loc.x, loc.y, diam, diam);
}
boolean isInContactWith(PVector mouse) {
  //mouse= sqrt(sq(mouseX)+sq(mouseY));
 if( dist(mouse.x,mouse.y,loc.x,loc.y)<diam/2){
  return true;
 }
 else {
   return false;
 }
 
}
void reset(){
  loc.x=0;
}
}