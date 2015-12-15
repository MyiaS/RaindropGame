class Raindrop {
  PVector loc,vel,a;
  int r,diam;
  
  Raindrop( float x, float y){
    x=0;
    y=random(height);
     diam = 50;
    loc = new PVector(random(diam, width-diam), 0);
    vel= new PVector(0,random(0,-10));
    a= new PVector(0,0.001);
    
  }
  

void fall(){
  loc.add(vel);
  vel.add(a);
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
  loc.y=0;
  loc.x=random(width);
}
}