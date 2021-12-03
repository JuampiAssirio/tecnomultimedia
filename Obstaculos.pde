class Obstaculos {
  PImage cartel;
  PImage arbolSeco;
  PImage obstaculo;
  float ax, ay, vel;
  float ox, oy;
  int tam, otam, cx, cy;
  Obstaculos() {
    ax = random(100, 600); //variable X arbol
    ay = random(100, 400); //variable Y arbol
    ox = random(100, width); //variable X piedras
    oy = 0; //variable Y piedras
    cx = 750; //variable X cartel
    cy = 50; //variable Y cartel
    vel = random(3, 7); //variable de velocidad
    tam = 100; 
    otam = 50; //tamaño de piedra
    arbolSeco = loadImage("arbolSeco.png");
    obstaculo = loadImage("obstaculo.png");
    cartel = loadImage("cartel.png");
  }

  void dibujarArbol() {
    arbolSeco.resize(tam, tam);
    image(arbolSeco, ax, ay);
  }
  void dibujarCartel() {
    cartel.resize(tam, tam);
    image(cartel, cx, cy);
  }

  void dibujarObstaculos() {
    obstaculo.resize(otam, otam);
    image(obstaculo, ox, oy);
  }

  void moverObstaculos() {
    if (oy>height) {
      oy = 0;
      ox = random(100, width);
      vel = random(2, 6);
    }
    oy+=vel;
  }
}
