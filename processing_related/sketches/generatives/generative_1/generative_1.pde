void setup() {
  size(720, 720);
  background(255);
  strokeWeight(1);
  stroke(0, 30);
  for(int x=0; x<=75; x++) {
    drawSpiral(int(random(0+x, 255-x)));
  }
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

void drawSpiral (int colourValue) {
  float radius = 10;
  int centX = width/2;
  int centY = height/2;
  stroke(min(255, colourValue+int(random(colourValue))), min(255, colourValue+int(random(colourValue))), min(255, colourValue+int(random(colourValue))));
  float x, y;
  float radiusNoise = random(10);
  float lastX = -999;
  float lastY = -999;
  for (float ang = 0; ang <= 360*10; ang += 5) {
    radius+=0.5;
    radiusNoise+=0.05;
    float thisRadius = radius + (noise(radiusNoise)*200)-100;
    float rad = radians(ang);
    x = centX + (thisRadius * cos(rad));
    y = centY + (thisRadius * sin(rad));
    if(lastX > -999) {
      line(x, y, lastX, lastY);
    }
    lastX = x;
    lastY = y;
  }
}
