class Obstaculos {
  PImage arbolSeco;
  PImage obstaculo;
  float ax, ay, vel;
  float ox, oy;
  int tam, otam;
  Obstaculos() {
    ax = random(100, 600);
    ay = random(100, 400);
    ox = random(150, width);
    oy = 0;
    vel = random(3, 7);
    tam = 100;
    otam = 50;
    arbolSeco = loadImage("arbolSeco.png");
    obstaculo = loadImage("obstaculo.png");
  }

  void dibujarArbol() {
    arbolSeco.resize(tam, tam);
    image(arbolSeco, ax, ay);
  }


  void dibujarObstaculos() {
    obstaculo.resize(otam, otam);
    image(obstaculo, ox, oy);
  }
  
  void moverObstaculos(){
    if(oy>height){
      oy = 0;
      ox = random(100, width);
      vel = random(3, 7);
    }
    oy+=vel;
  }
}
