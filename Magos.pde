class Magos {
  int mx, my, mtam;
  Magos () {
    mtam = 30;
    mx = 78;
    my = 585;
  }
  void dibujarMagos() {
    rectMode(CENTER);
    fill(255);
    noStroke();
    ellipse(mx, my, mtam, mtam);
    println(mx, my);
  }
  void moverMagos(int Mover) {
    if (Mover==RIGHT && mx<width-mtam/4) {
      mx+=7;
    }
    if (Mover==LEFT && mx>mtam/4) {
      mx-=7;
    }
    if (Mover==UP && my>mtam/2) {
      my-=7;
    }
    if (Mover==DOWN && my<height-mtam/2) {
      my+=7;
    }
  }
}
