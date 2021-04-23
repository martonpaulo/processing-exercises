// UNIT OF LENGTH
float UL = 0.8;

// RADIUS
float r;

// SPEED
float speed = 0.75;
// frameRate(60);

// COLORS
color red = color(234, 0, 4);
color green = color(75, 255, 68);
color blue = color(47, 34, 179);
color gray = color(203, 201, 203);

// PROGRAM VARIABLES
float x0, y0, x, y, alfa;
boolean aboveOX;


void setup() {
  size(520, 380);
  
  x0 = width/2;
  y0 = height/2;
  
  x = x0;
  y = y0;
  
  alfa = -180;
  r = 20 * UL;
  aboveOX = false;
  
  background(gray);
}


void draw() {
  
  // CIRCLE COORDINATES
  alfa = (alfa - speed) % 360;
  float alfaX = cos(radians(alfa)) * r;
  float alfaY = sin(radians(alfa)) * r;
  
  // DRAW MOVING POINT  
  stroke(red);
  strokeWeight(6);
  point(x + alfaX, y + alfaY);
  
  // ON AXIS CHANGES
  if (aboveOX == false && alfa < 0 && alfa > -180) {
    aboveOX = true;
    r *= 2;
    x -= r/2;
    
  } else if (aboveOX == true && alfa < -180 && alfa > -360) {
    aboveOX = false;
    r *= 2;
    x += r/2;
  }
  
  // DRAW AXIS
  strokeWeight(1.8);
  stroke(blue);
  line(0, y0, width, y0);
  stroke(green);
  line(x0, 0, x0, height);
}
