class Magos {
  PImage mags = loadImage("3hermanos.png");
  int mx, my, mtam;
  int cant = 15;
  int tam;
  Magos () {
    mtam = 90;
    mx = 78;
    my = 555;
  }
  void dibujarMagos() {
    fill(255);
    noStroke();
    mags.resize(mtam, mtam);
    image(mags, mx, my);
  }
  void moverMagos(int Mover) {
    if (Mover==RIGHT && mx<width-mtam/5) {
      mx+=5;
    }

    if (Mover==LEFT && mx>mtam/2) {
      mx-=5;
    }
    if (Mover==UP && my>mtam/2) {
      my-=5;
    }
    if (Mover==DOWN && my<height-mtam/2) {
      my+=5;
    }
  }
}
