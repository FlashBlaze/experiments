void setup() {
  size(720, 720);
  background(255);
  strokeWeight(5);
  stroke(0, 30);
  drawCircle();
}

void drawSine() {
  line(20,50,720,50);
  stroke(20, 50, 70);
  float xstep = 1;
  float lastx = -999;
  float lasty = -999;
  float angle = 0;
  float y = 50;
  for (int x=20; x<=720; x+=xstep) {
    float rad = radians(angle);
    y = 50 + (sin(rad)* 40);
    if (lastx > -999) {
      line(x, y, lastx, lasty);
    }
    lastx = x;
    lasty = y;
    angle++;
  }
}

void drawCircle () {
  float radius = 100;
  int centX = width/2;
  int centY = height/2;
  stroke(0, 30);
  noFill();
  ellipse(centX,centY,radius*2,radius*2);
  stroke(20, 50, 70);
  float x, y;
  for (float ang = 0; ang <= 360; ang += 5) {
  float rad = radians(ang);
  x = centX + (radius * cos(rad));
  y = centY + (radius * sin(rad));
  point(x,y);
  }
}
