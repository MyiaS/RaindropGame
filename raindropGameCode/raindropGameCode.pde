float mode;
int score;
PVector mouse;   //declare a PVector called circle
//Raindrop r;      //declare a new Raindrop called r
Bucket b;        //declare a new Bucket called b

// On your own, create an array of Raindrop objects instead of just one
// Use the array instead of the single object
// You can start out by just using the single Raindrop as you test
ArrayList<Raindrop> r= new ArrayList<Raindrop>();

void setup() {
  mode=0;
  score=0;
  size(1200, 800);
  mouse= new PVector();                //initialize mouse PVector. value is irrelevant since it will be set at the start of void draw(){}
  //r = new Raindrop(random(width),0);   //Initialize r. The parameters used are the initial x and y positions
  b= new Bucket (mouseX, mouseY);       //initialize b. the parameters are the x and y locations.
  r.add(new Raindrop(mouseX, mouseY));
}

void draw() {

  if(mode==0){
    background(0);
    textSize(20);
    textAlign(CENTER);
    text("Click anywhere to start!", width/2, height/2);
    if(mousePressed){
      mode=1;
    }
  }
  if(mode==1){
      background(0, 200, 255);
    textSize(20);
    text(score, width/2, height/4);
    fill(0);
  b.update();
  mouse.set(mouseX, mouseY);             //set value of mouse as mouseX,mouseY

  for (int i=r.size()-1; i>=0; i--) { 
    Raindrop a= r.get(i);
    a.fall();         //make the raindrop fall. It should accelerate as if pulled towards the ground by earth's gravity
    a.display(); //display the raindrop
    b.display();
    if (a.isInContactWith(b)) {      //check to see if the raindrop is in contact with the point represented by the PVector called mouse
      a.reset();   //if it is, reset the raindrop
      score= score+1;
    }

    if (a.loc.y > height + a.diam/2) {     //check to see if the raindrop goes below the bottom of the screen
      a.reset();                           //if it does, reset the raindrop
    }
  }
  }
  if(score==15){
    mode=2;
  }
  if(mode==2){
    background(0);
    text("YOU WIN!", width/2, height/2);
    textSize(50);
    textAlign( CENTER);
    fill(255);
  }
  
}