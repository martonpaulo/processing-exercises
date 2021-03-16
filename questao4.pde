// UNIT OF LENGTH
float UC = 1.3;

// RADIUSES
float r = 25 * UC;
float R = 100 * UC;

// COLORS
color red = color(236, 0, 1);
color blue = color(44, 33, 204);
color gray = color(200, 199, 203);

// PROGRAM VARIABLES
float circleAngle, circleX, circleY, pointAngle, pointX, pointY, speed;


void setup() {
  size(520, 380);
  
  circleAngle = 0.0;
  circleX = R-r;
  circleY = 0.0;
  
  pointAngle = 0.0;
  pointX = R;
  pointY = 0.0;
  
  frameRate(60);
  speed = 1.5;
}


void draw() {
  background(gray);
  
  // MAJOR CIRCLE
  noFill();
  stroke(blue);
  strokeWeight(1.5);
  ellipse(width/2, height/2, 2*R, 2*R);
  
  // CIRCLE COORDINATES
  circleAngle = (circleAngle - speed) % 360;
  circleX = cos(radians(circleAngle)) * (R - r);
  circleY = sin(radians(circleAngle)) * (R - r);
  
  // POINT COORDINATES
  pointAngle = (-4 * circleAngle) % 360;
  pointX = circleX + cos(radians(pointAngle)) * r;
  pointY = circleY + sin(radians(pointAngle)) * r;
  
  // RED POINT
  stroke(red);
  strokeWeight(5);
  point(int(pointX) + width/2.0, int(pointY) + height/2.0);
  strokeWeight(1);
  
  // INNER CIRCLE
  noFill();
  stroke(blue);
  strokeWeight(1.2);
  ellipse(int(circleX) + width/2.0, int(circleY) + height/2.0, 2*r, 2*r);
}
