//lucia amatriain 
//comision1

int posX;
float posY;
int tam;
int dist;


void setup() {
  size(800, 400);
  background(255);
  PImage secuencia;
  secuencia= loadImage("secuenciadecirculos.jpg");
  image(secuencia, 0, 0);
  noStroke();
  posY = 363;
  tam = 62;
  dist = 65;
}

void draw() {
  push();
  translate(400, 0);
  secuenciaDeCirculos(30);

  println("Y:"+ mouseY);

  for (posY=363; posY>=310; posY-=53.5) {
    tam= 40;
  }
  for (dist=65; dist>60; dist-=24) {
  }
  secuenciaDeCirculos(10);

  for (posY=363; posY>310; posY-=90) {
    tam= 30;
  }
  for (dist=65; dist>60; dist-=34) {
  }
  secuenciaDeCirculos(10);

  for (posY=363; posY>310; posY-=120) {
    tam= 25;
  }
  for (dist=65; dist>60; dist-=38) {
    
  }secuenciaDeCirculos(10);
  
  for (posY=363; posY>310; posY-=120) {
    tam= 25;
  }
  for (dist=65; dist>60; dist-=38) {
    
  }secuenciaDeCirculos(10);
  
  
  for (posY=363; posY>310; posY-=144) {
    tam= 20;
  }
  for (dist=65; dist>60; dist-=44) {
    
  }secuenciaDeCirculos(10);
  secuenciaDeCirculos(300);
  
  
  
  
  
  
  pop();
}

void secuenciaDeCirculos(int posX) {
  posX = 30;

  ellipseMode(CENTER);
  fill(0);
  ellipse(posX, posY, tam, tam);
  ellipse(posX+dist, posY, tam, tam);
  ellipse(posX+(dist*2), posY, tam, tam);
  ellipse(posX+(dist*3), posY, tam, tam);
  ellipse(posX+(dist*4), posY, tam, tam);
  ellipse(posX+(dist*5), posY, tam, tam);
}
