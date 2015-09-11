
int xPositionOfSquare = 100; // Where on the x axis the object will start moving from 
int yPositionOfSquare = 250;
int xSpeed = 5;
int ySpeed = 5;

void setup() {

  size(1000, 500);
}

// Sets the background gray value based on the distance 
// of the mouse from the center of the screen
void draw() {
  noStroke();  // No outline around the square
  float d = dist(width/2, height/2, mouseX, mouseY);
  float maxDist = dist(0, 0, width/2, height/2);
  float gray = map(d, 0, maxDist, 0, 255);
  fill(gray);
  rect(0, 0, width, height);

  fill(0, 255, 0);  // Colour of the box
  rect(xPositionOfSquare, yPositionOfSquare, 50, 50);  // Makes a rectangle with specified dimensions
  xPositionOfSquare+=xSpeed;  // Indicates relationship between the squares position and speed
  yPositionOfSquare+=ySpeed;
  
  if (keyCode == LEFT) {
    xSpeed = -5;
  }
  if (keyCode == RIGHT) {
    xSpeed = 5;
  }  
  if (keyCode == DOWN) {
    xSpeed = 0;
    ySpeed = 5;
  }
  if (keyCode == UP) {
    xSpeed = 0;
    ySpeed = -5;
  }
    if (key == '.') {
    xSpeed = 0;
    ySpeed = 0;
  }
  
  
  
  if (xPositionOfSquare > (width-50)) {  // If the square travels beyond the width value then something will happen
    xPositionOfSquare = (width-50);  // This line gives the point where the square begins travelling the other way
    xSpeed = -5;  // The square will be moving at 5 frames per second from RIGHT to left. This is shown by the negative before the 5
  }
  if (xPositionOfSquare < 0) {  // If the squares position is less than 0
    xPositionOfSquare = 0;  // Then start the square from 0 or make it bounce back from the left
    xSpeed = 5;  // At a speed of 5 frames per second from left to right
   
  }
  
  if (yPositionOfSquare > (height-50)) {  
    yPositionOfSquare = (height-50);  
    ySpeed = -5; 
  }
  if (yPositionOfSquare < 0) {  
    yPositionOfSquare = 0; 
    ySpeed = 5;  
   
  }
  
}


