size(1280, 1280);
background(255);
strokeWeight(5);
stroke(0, 30);
line(20,50,720,50);
stroke(20, 50, 70);
float xstep = 1;
float lastx = -999;
float lasty = -999;
float angle = 0;
float y = 50;
for (int x=20; x<=720; x+=xstep) {
  float rad = radians(angle);
  y = 50 + (sin(rad) * 40);
  if (lastx > -999) {
    line(x, y, lastx, lasty);
  }
  lastx = x;
  lasty = y;
  angle++;
}
