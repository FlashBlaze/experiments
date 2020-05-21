float xStart, xNoise, yStart, yNoise;
float xStartNoise, yStartNoise;

void setup() {
  size(720,720);
  background(0);
  frameRate(30);
  xStart = random(10);
  yStart = random(10);
  xStartNoise = random(20);
  yStartNoise = random(20);
}

void draw () {
  background(255);
  xStart += 0.01;
  yStart += 0.01;
  xStartNoise += 0.01;
  yStartNoise += 0.01;
  xStart += (noise(xStartNoise) * 0.5) - 0.25;
  yStart += (noise(yStartNoise) * 0.5) - 0.25;
  xNoise = xStart;
  yNoise = yStart;
  for (int y = 0; y <= height; y+=5) {
    yNoise += 0.1;
    xNoise = xStart;
    for (int x = 0; x <= width; x+=5) {
      xNoise += 0.1;
      drawPoint(x, y, noise(xNoise, yNoise));
    }
  }
}

void drawPoint(float x, float y, float noiseFactor) {
  pushMatrix();
  translate(x,y);
  rotate(noiseFactor * radians(540));
  noStroke();
  float edgeSize = noiseFactor * 35;
  float grey = 150 + (noiseFactor * 120);
  float alph = 150 + (noiseFactor * 120);
  fill(grey, alph);
  ellipse(0,0, edgeSize, edgeSize/2);
  popMatrix();
}