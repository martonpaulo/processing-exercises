// UNIDADE DE COMPRIMENTO
float UC = 0.3;

// DEFINIDOS PELA ESPECIFICACAO DO PROJETO
float r = 30 * UC;
float verticalSpeed = 10 * UC;
float g = 0.5 * UC;

// CORES
color red = color(232, 0 ,1);
color blue = color(2, 0, 243);
color gray = color(199, 197, 202);

// VARIAVEIS DO PROGRAMA
int time;
float horizontalSpeed, x0, y0, minX, minY, maxX, maxY, x, y;
boolean goingForward;


void setup() {
  size(520, 380);
  
  // CENTRO DA TELA
  x0 = width/2;
  y0 = height/2;
  
  // POSSIVEIS POSICOES PARA A BOLA
  minX = r;
  minY = r;
  maxX = width - r;
  maxY = y0 - r;
  
  // VARIAVEIS INICIAIS PARA A BOLA
  x = minX;
  y = maxY;
  goingForward = true;
  
  // VELOCIDADE HORIZONTAL PARA COMPLETAR IDA E VOLTA EM 4 SEGUNDOS
  horizontalSpeed = (maxX - minX) / (2 * 60);
  
  // CINEMATICA
  time = 0; // tempo que aumenta uma unidade a cada passagem de frame
}


void draw() {
  background(gray);
  
  // DESENHA BOLA
  fill(blue);
  ellipse(x, y, 2*r, 2*r);
  
  // DESENHA SOLO
  fill(red);
  rect(0, y0, width, y0);
  
  
  // MOVIMENTACAO HORIZONTAL DA BOLA
  x = goingForward ? x+horizontalSpeed : x-horizontalSpeed;
  
  // BATE NO FIM E VOLTA
  if (x > maxX) {
    x -= horizontalSpeed;
    goingForward = false;
  
  // BATE NO INICIO E VOLTA
  } else if (x < minX) {
    x += horizontalSpeed;
    goingForward = true;
  }
  
  
  // MOVIMENTACAO VERTICAL DA BOLA
  y = maxY - verticalSpeed * time + 0.5 * g * time * time;
  
  
  // PASSAGEM DE TEMPO POR FRAME
  time++;
  
  // SE A BOLA VOLTA AO SOLO, O TEMPO DO MOVIMENTO ZERA
  if (y > maxY) time = 0;
}
