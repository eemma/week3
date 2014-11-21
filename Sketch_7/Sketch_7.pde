float x, y;
float ballSize= 40;
float xSpeed=5, ySpeed = 5;
boolean movingUp = false, movingLeft = false;

//keep setup() the same as before

void draw() {
  
  background(#92CFED);
  fill(216, 7, 21);
  ellipse(x, y, ballSize, ballSize);
  
  if (y + ballSize/2 >= 0) {
    movingUp = false;
  }
  if (x + ballSize/2 >= width) {
    movingLeft = true;
  } else if (x - ballSize/2 <= 0) {
    movingLeft = false;
  }
  
  if (movingUp) {
    y = y - ySpeed;
  } else {
    y = y + xSpeed;
  }
  
  if (movingLeft) {
    x = x - xSpeed;
  } else {
    x = x + xSpeed;
  }
}
