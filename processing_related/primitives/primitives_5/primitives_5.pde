int radius = 20;
int timeToExceed = 2000;
float speed = 20;
float x;
float y;

void setup() {
  size(512, 512);
  x = width/2;
  y = height/2;
}

void draw() {
  //background(0);

  // millis() is used to get the time since the sketch is started
  int currentTime = millis();
  if(currentTime > timeToExceed) {
    x += random(-speed, speed);
    y += random(-speed, speed);
    
    // constrain will keep the ellipse from leaving the screen
    // The constrain() function limits a value to a specific range, which can be used to keep
    // x and y within the boundaries of the Display Window.
    x = constrain(x, 0, width);
    y = constrain(y, 0, height);
    ellipse(x, y, radius, radius);
  }
}
