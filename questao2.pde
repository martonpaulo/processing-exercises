// UNIT OF LENGTH
float UL = 15;

// ARM AND FOREARM
float arm = 2 * UL;
float forearm = 3 * UL;

// SPEED
float speed = 0.25;
// frameRate(60);

// COLORS
color blue = color(9, 98, 246);
color black = color(2, 1, 25);
color white = color(252, 252, 252);

// PROGRAM VARIABLES
float x0, y0, alfa, beta;

void setup() {
  size(520, 380);
  
  x0 = width/2;
  y0 = height/2 - arm - forearm;
  
  alfa = 90;
  beta = 90;
}


void draw() {
  background(blue);
  
  // FIRST POINT
  alfa = (alfa - speed) % 30 - 270;
  float alfaX = cos(radians(alfa)) * arm;
  float alfaY = sin(radians(alfa)) * arm;
  
  // SECOND POINT
  beta = (beta - speed*3) % 90 - 270;
  float betaX = cos(radians(beta)) * forearm;
  float betaY = sin(radians(beta)) * forearm;
  
  // Xs AND Ys
  float x1 = x0 + alfaX;
  float y1 = y0 + alfaY;
  float x2 = x1 + betaX;
  float y2 = y1 + betaY;
  
  // DRAW LINES
  stroke(black);
  strokeWeight(4);
  line(x0, y0, x1, y1);
  line(x1, y1, x2, y2);
  
  // DRAW POINTS
  stroke(white);
  strokeWeight(9);
  point(x0, y0);
  point(x1, y1);
  point(x2, y2);
  
}
