float angle = 0.0;
float speed = 0.1;
float scalar = 0;
float offset = 256;
int radius = 20;

void setup() {
  size(512, 512);
}

void draw() {

  float x = offset + cos(angle) * scalar/2;
  float y = offset + sin(angle) * scalar/2;
  int currentTime = millis();
  if(currentTime%2==0) {
    fill(255, 162, 123);
  } else if(currentTime%3==0) {
    fill(123, 163, 255);
  }
  ellipse(x, y, radius, radius);
  angle += speed;
  scalar += 0.25;
}