//Lucia Amatriain tp1
//Comision 1

String diapo;
float tiempo;

PImage bariloche1, bariloche2, bariloche3, bariloche4, bariloche5;
float posT, posZ, posF, posU;
PFont t;
float opacidad, opacidad2;

float posX, posY, ancho, alto;

void setup() {
  size(640, 480);
  diapo= "primera"; 
  tiempo= 0; 

  bariloche1= loadImage("bariloche1.jpg");
  bariloche2= loadImage("bariloche2.jpg");
  bariloche3= loadImage("bariloche3.jpg");
  bariloche4= loadImage("bariloche4.jpg");
  bariloche5= loadImage("bariloche5.jpg");

  t = loadFont("fuente.vlw");
  opacidad= opacidad2= 0;
  posZ= 680;
  posF= -100;
  posT= 600;
  posU= -50;
  fill(0);
  textSize(40);
  textAlign(CENTER, CENTER);

  posX=240;
  posY=410;
  ancho=150;
  alto=50;
}

void draw() {
  background(0);
  tiempo++;

  if (diapo.equals("primera")) { 
    image(bariloche1, 0, 0);
    bariloche1.resize(640, 480);
    textSize(55);
    fill(255);
    text("San carlos de ", posZ, height/2);
    if (posZ>width/2) {
      posZ--;
    }
  } else if (diapo.equals("segunda")) {
    image(bariloche2, -100, 0);
    bariloche2.resize(1044, 491);
    textSize(40);
    fill(0);
    text("En el centro de la ciudad \n se encuentra el Centro cívico, \n una plaza de estilo alpino con \n una torre del reloj, un ayuntamiento y \n el Museo de la Patagonia", width/2, posT);
    if (posT>height/2) {
      posT--;
    }
  } else if (diapo.equals("tercera")) {
    image(bariloche3, 0, 0);
    bariloche3.resize(640, 500);
    opacidad = opacidad+1;
    textSize(30);
    fill(opacidad, 255);
    text("Al cerro Campanario \n se llega mediante un sistema de aerosillas. \n Consta de 8 torres, 40 sillas (con capacidad \n de hasta 60), tiene una longitud de 640 m y \n capacidad para 450 personas. \n La altura de la estación superior es de 1.050mts \n y de la estación inferior es de 770 mts.", posF, height/2); //achicar
    if (posF<width/2) {
      posF++;
    }
  } else if (diapo.equals("cuarta")) {
    image(bariloche4, -100, -100);
    textSize(40);
    fill(0);
    text("El Cerro catedral en invierno \n es especial para realizar actividades \n deportivas como sky o trineo sentado", width/2, posU);
    if (posU<height/2) {
      posU++;
    }
  } else if (diapo.equals("quinta")) {
    image(bariloche5, 0, 0);
    bariloche5.resize(640, 480);
    opacidad2 = opacidad2 + 1;
    fill(0, opacidad2);
    textSize(40);
    text("El Parque Nacional Nahuel Huapi \n es un área amplia protegida en el \n Distrito de los Lagos. Es conocido por \n tener el lago glaciar más \n grande de América, del mismo nombre.", width/2, height/2);
  } else if (diapo.equals("reiniciar")) {
    image(bariloche5, 0, 0);
    bariloche5.resize(640, 480);
    textSize(40);
    fill(0);
    text("El Parque Nacional Nahuel Huapi \n es un área amplia protegida en el \n Distrito de los Lagos. Es conocido por \n tener el lago glaciar más \n grande de América, del mismo nombre.", width/2, height/2); //achicar
    strokeWeight(2);
    fill(10, 200, 100);
    rect(posX, posY, ancho, alto);
  }


  if (tiempo<600) {
    diapo = "primera";
  } else if (tiempo >=600 && tiempo <1200) {
    diapo = "segunda";
  } else if (tiempo >=1200 && tiempo <1800) {
    diapo = "tercera";
  } else if (tiempo >=1800 && tiempo <2400) {
    diapo = "cuarta";
  } else if (tiempo >=2400 && tiempo <3000) {
    diapo = "quinta";
  } else if (tiempo >=3000 && tiempo <3600) {
    diapo = "reiniciar";
  }
}

void mousePressed() {
  if (mouseX>240 && mouseX<390 && mouseY>390 && mouseY<470) {
    background(0);
    diapo = "primera";
    tiempo = 0;
    posT = 600;
    posZ = 680;
    posF = -100;
    posU= -50;
    fill(0);
    opacidad= opacidad2= 0;
  }
}
