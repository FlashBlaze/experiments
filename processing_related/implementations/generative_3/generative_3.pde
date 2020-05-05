float xStart, xNoise, yNoise;
void setup() {
  size(720, 720);
  // uncomment background(255) and comment background(0) for drawPoint() and drawLine()
  // background(255);
  background(0);
  xStart = random(10);
  xNoise = xStart;
  yNoise = random(10);
  for (int y = 0; y < height; y += 5) {
    yNoise += 0.1;
    xNoise = xStart;
    for (int x = 0; x < width; x += 5) {
      xNoise += 0.1;
      drawLine(x, y, noise(xNoise, yNoise));
    }
  }
}

void drawPoint(float x, float y, float noiseFactor) {
  float len = 10 * noiseFactor;
  rect(x, y, len, len);
}

void drawLine(float x, float y, float noiseFactor) {
  // pushMatrix and popMatrix
  // are a way of storing the previous drawing position before performing the translation and rotation,
  // and then restoring it afterward
  pushMatrix();
  // translate becomes the new origin from which to start drawing
  translate(x,y);
  rotate(noiseFactor * radians(360));
  stroke(0, 150);
  line(0,0,20,0); 
  popMatrix();
}

void drawCloud(float x, float y, float noiseFactor) {
  pushMatrix();
  translate(x,y);
  rotate(noiseFactor * radians(540));
  float edgeSize = noiseFactor * 35;
  float grey = 150 + (noiseFactor * 120);
  float alph = 150 + (noiseFactor * 120);
  noStroke();
  fill(grey, alph);
  ellipse(0,0, edgeSize, edgeSize/2);
  popMatrix();
}
