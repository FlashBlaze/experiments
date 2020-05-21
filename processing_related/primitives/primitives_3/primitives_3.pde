import static javax.swing.JOptionPane.*;

size(720, 720);
// textSize(25);
// fill(0, 0, 0);
// textAlign(CENTER);
// text("Hello World!", width/2, height/2);

int inputRadius;
int randomPoint = int(random(50, 350));

inputRadius = int(showInputDialog("Enter Radius"));
ellipse(randomPoint+60, randomPoint+60, inputRadius, inputRadius);

fill(0, 0, 0);
textAlign(CENTER);
text("Side is: " + randomPoint, inputRadius+randomPoint+80, inputRadius+randomPoint+80);
//Picking a random int from 0-255
fill(random(256), random(256), random(256));
rect(0, 0, randomPoint, randomPoint);
fill(0, 0, 0);
textAlign(CENTER);
text("Area of the square is: " + pow(randomPoint, 2), inputRadius+randomPoint+120, inputRadius+randomPoint+120);

showMessageDialog(frame, "Noice");

