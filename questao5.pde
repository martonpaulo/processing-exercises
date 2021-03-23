void setup(){
  size(800,800,P3D);
  frameRate(250);
}
void setupCS() {
  translate(400,400);
  rotateX(PI/4);
  rotateY(PI/8);
  scale(1,-1);
  noFill();
  line(0,-400,0,400);
  line(-400,0,400,0);
  line(0,0,-400,0,0,400);
}
float x = 1;
float y = 0;
void draw(){
  setupCS();
  //Rotaciona 60
  rotateX(PI/3);
  translate(50,50,0);
  stroke(0);
  //retângulo e circulo maiores
  fill(127,255,0);
  rect(-50,-50,100,100);
  circle(0,0,100);
  //rotacionar em z
  rotateZ(PI/(4*120)*x);
  translate(50,0,0);
  //levante do círculo
  rotateY(PI/2);
  //círculo
  noFill();
  translate(-12.5,0,0);
  circle(0,0,25);
  //roda o ponto
  rotate(-PI/(120)*x);
  //ponto
  fill(204, 102, 0);
  circle(12.5,0,10);
  x=1+x;
}
