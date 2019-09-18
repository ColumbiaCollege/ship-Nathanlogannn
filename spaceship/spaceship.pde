//making spaceship


//global varibale for ship
float xPos = 0;
float yPos = 0;


//image of space ship
PImage photo;

void setup() {
  size(1500, 1000);
  photo = loadImage("spaceship.jpg");


  //position of ship
  xPos = width/2;
  yPos = height/2;
}



void draw() {
  //protection to keep ship on screen
  if (xPos > 1500)
  { 
    xPos = 0;
  }
  if (xPos < 0) {
    xPos = 1500;
  }
  if (yPos < 0) {
    yPos = 1000;
  }
  if (yPos > 1000) {
    yPos = 0;
  }
  //space
  background(0);

  //stars
  //fill(255);
  //ellipse(100, 100, 10, 10);

  //couldn't figure out how to make the stars stop generating
  
  for (int i = 0; i < 100; i++) {
    float r = random(50);
   // stroke(r*5);
    ellipse(50*r, i*10, 10, 10);
  }

  //spaceship
  image(photo, xPos, yPos);


  //user controlled movement

  //left
  if (keyPressed) {
    if (key == 'a') {
      xPos--;
    }
  }
  //up
  if (keyPressed) {
    if (key == 'w') {
      yPos--;
    }
  }
  //right
  if (keyPressed) {
    if (key == 'd') {
      xPos++;
    }
  }
  //down
  if (keyPressed) {
    if (key =='s') {
      yPos++;
    }
  }
}
