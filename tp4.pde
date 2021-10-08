/* ---TRABAJO PRACTICO N4---*/
//La Fabula de los Tres Hermanos (Harry Potter)//
//Assirio, Juan Pablo
//Legajo 88208/2
//Comision 1
//URL: https://youtu.be/jFhh5AS8E1I


String estado;
PFont tip;
PImage [] Historia = new PImage[47];
String [] lineas;
int cant;
float anchoimg, altoimg;

void setup() {
  size(800, 600);
  anchoimg = 750;
  altoimg = height/2;
  tip = loadFont("BIZ-UDPMincho-Medium-48.vlw");
  textFont(tip);
  lineas = loadStrings("cuento.txt");
  for (int t = 0; t< lineas.length; t++) {
  }
  for (int h=0; h<Historia.length; h++) {
    Historia[h] = loadImage("Historia"+h+".jpg");
    //Historia[h].resize(800, 600);
  }
  estado = "comienzo";
}


void draw() {
  //textSize(50);
  background(202, 163, 68);
  //botones(200, 450, 100, 55); //Izquierda
  //botones(width-300, 450, 100, 55); //Derecha

  if (estado.equals("comienzo")) {
    comienzo();
  } else if (estado.equals("introduccion")) {
    introduccion();
  } else if (estado.equals("creditos")) {
    creditos();
  } else if (estado.equals("bifurcacionUno")) {
    bifurcacionUno();
  } else if (estado.equals("muerteUno")) {
    muerteUno();
  } else if (estado.equals("continuarUno")) {
    continuarUno();
  } else if (estado.equals("laMuerte")) {
    laMuerte();
  } else if (estado.equals("regalos")) {
    regalos();
  } else if (estado.equals("HermanoMayor")) {
    HermanoMayor();
  } else if (estado.equals("HermanoMedio")) {
    HermanoMedio();
  } else if (estado.equals("HermanoMenor")) {
    HermanoMenor();
  } else if (estado.equals("continuarDos")) {
    continuarDos();
  } else if (estado.equals("continuarTres")) {
    continuarTres();
  } else if (estado.equals("bifurcacionDos")) {
    bifurcacionDos();
  } else if (estado.equals("HerMenorDos")) {
    HerMenorDos();
  } else if (estado.equals("muerteDos")) {
    muerteDos();
  } else if (estado.equals("fin")) {
    fin();
  }
  println(frameCount);
  println(estado);
}


void mousePressed() {
  if (botonPressed(mouseX, mouseY, 200, 450, 100, 55) && estado.equals("comienzo") && frameCount>5) {
    estado = "creditos";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, 350, 470, 100, 55) && estado.equals("creditos") && frameCount>5) {
    estado = "comienzo";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, width-300, 450, 100, 55) && estado.equals("comienzo") && frameCount>5) {
    estado = "introduccion";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("introduccion") && frameCount>5) {
    estado = "bifurcacionUno";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, 60, 470, 190, 55) && estado.equals("bifurcacionUno") && frameCount>5) {
    estado = "muerteUno";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, width-250, 470, 190, 55) && estado.equals("bifurcacionUno") && frameCount>5) {
    estado = "continuarUno";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, 15, 530, 100, 55) && estado.equals("continuarUno") && frameCount>5) {
    estado = "laMuerte";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("laMuerte") && frameCount>5) {
    estado = "regalos";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("regalos") && frameCount>5) {
    estado = "HermanoMayor";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("HermanoMayor") && frameCount>5) {
    estado = "HermanoMedio";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("HermanoMedio") && frameCount>5) {
    estado = "HermanoMenor";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("HermanoMenor") && frameCount>5) {
    estado = "continuarDos";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("continuarDos") && frameCount>5) {
    estado = "continuarTres";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("continuarTres") && frameCount>5) {
    estado = "bifurcacionDos";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, 60, 470, 190, 55) && estado.equals("bifurcacionDos") && frameCount>5) {
    estado = "muerteDos";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, width-250, 470, 190, 55) && estado.equals("bifurcacionDos") && frameCount>5) {
    estado = "HerMenorDos";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("HerMenorDos") && frameCount>5) {
    estado = "fin";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("muerteDos") && frameCount>5) {
    estado = "fin";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, 350, 470, 100, 55) && estado.equals("fin") && frameCount>5) {
    estado = "comienzo";
    frameCount = 0;
  }
  if (botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("muerteUno") && frameCount>5) {
    estado = "fin";
    frameCount = 0;
  }
}
