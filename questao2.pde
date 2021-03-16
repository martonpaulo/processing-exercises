// UNIDADE DE COMPRIMENTO
float UC = 15;

// ARM AND FOREARM
float arm = 2 * UC;
float forearm = 3 * UC;

// COLORS
color blue = color(9, 98, 246);
color black = color(2, 1, 25);
color white = color(252, 252, 252);

// PROGRAM VARIABLES
float centerX, centerY, firstPointAngle, firstPointX, firstPointY, secondPointAngle, secondPointX, secondPointY, X1, X2, Y1, Y2, speed;

void setup() {
  size(520, 380);
  
  centerX = width/2;
  centerY = height/2 - arm - forearm;
  
  firstPointAngle = 0.0;
  firstPointX = centerX;
  firstPointY = centerY + arm;
  
  secondPointAngle = 0.0;
  secondPointX = centerX;
  secondPointY = centerY + arm + forearm;
  
  frameRate(60);
  speed = 0.375;
}


void draw() {
  background(blue);
  
  // FIRST POINT
  stroke(white);
  strokeWeight(9);
  firstPointAngle = (firstPointAngle - speed) % 45 - 270;
  firstPointX = cos(radians(firstPointAngle)) * arm;
  firstPointY = sin(radians(firstPointAngle)) * arm;
  
  // SECOND POINT
  stroke(white);
  strokeWeight(9);
  secondPointAngle = (secondPointAngle - speed*2) % 90 - 270;
  secondPointX = cos(radians(secondPointAngle)) * forearm;
  secondPointY = sin(radians(secondPointAngle)) * forearm;
  
  // ONLY CHANGE Xs AND Ys IF THE SECOND LINE IS NOT IN HORIZONTAL
  X1 = centerX + firstPointX;
  X2 = X1 + secondPointX;
  Y1 = centerY + firstPointY;
  Y2 = Y1 + secondPointY;
  
  // DRAW LINES
  stroke(black);
  strokeWeight(4);
  line(centerX, centerY, X1, Y1);  
  line(X1, Y1, X2, Y2);
  
  
  // DRAW POINTS
  stroke(white);
  strokeWeight(9);
  point(centerX, centerY);
  point(X1, Y1);
  point(X2, Y2);  
  
}
