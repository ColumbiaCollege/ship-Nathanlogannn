//making spaceship



float xPos = 0;
float yPos = 0;


//image of space ship
PImage photo;

void setup() {
  size(1000, 1000);
  photo = loadImage("spaceship.jpg");
  
  //position of ship
  xPos = width/2;
  yPos = height/2;
}

void draw() {
  //space
  background(0);
  
  
  //spaceship
  image(photo, xPos, yPos);
  
  if (keyPressed){
    if (key == 'a'){
      xPos--;
    }
  }
}




//user controlled movement



//protection to keep ship on screen
