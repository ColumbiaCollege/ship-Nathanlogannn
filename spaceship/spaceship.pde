//making spaceship


//global varibale for ship
float xPos = 0;
float yPos = 0;


//image of space ship
PImage photo;

void setup() {
  size(1500, 1500);
  photo = loadImage("spaceship.jpg");


  //position of ship
  xPos = width/2;
  yPos = height/2;
}

void draw() {
  //space
  background(0);

  //stars
  fill(255);
  ellipse(100, 100, 10, 10);

  //couldn't figure out how to make the stars stop generating
  //for (int i = 0; i < 100; i++) {
  //float r = random(50);
  //stroke(r*5);
  //ellipse(50*r, i*50, 10, 10);
  //}

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




//protection to keep ship on screen

//I toiled for hours looking at the API and videos of others and youtube and I simply cannot figure out a way to make the bounce work at all
