// UNIT OF LENGTH
float UL = 1.3;

// RADIUSES
float r = 25 * UL;
float R = 100 * UL;

// SPEED
float speed = 1.5;
// frameRate(60);

// COLORS
color red = color(236, 0, 1);
color blue = color(44, 33, 204);
color gray = color(200, 199, 203);

// PROGRAM VARIABLES
float x0, y0, alfa, beta;


void setup() {
  size(520, 380);
  
  x0 = width/2;
  y0 = height/2;
  
  alfa = 0.0;
  beta = 0.0;
  
  noFill();
}


void draw() {
  background(gray);
  
  // MAJOR CIRCLE
  stroke(blue);
  strokeWeight(1.5);
  ellipse(x0, y0, 2*R, 2*R);
  
  // CIRCLE COORDINATES
  alfa = (alfa - speed) % 360;
  float alfaX = cos(radians(alfa)) * (R - r);
  float alfaY = sin(radians(alfa)) * (R - r);
  
  // POINT COORDINATES
  beta = (-4 * alfa) % 360;
  float betaX = cos(radians(beta)) * r;
  float betaY = sin(radians(beta)) * r;
  
  // INNER CIRCLE
  stroke(blue);
  strokeWeight(1.2);
  ellipse(x0 + alfaX, y0 + alfaY, 2*r, 2*r);
  
  // RED POINT
  stroke(red);
  strokeWeight(5);
  point(x0 + alfaX + betaX, y0 + alfaY + betaY);
}
