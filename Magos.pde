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
  }
  void moverMagos(int Mover) {
    //ellipse(mouseX, mouseY, mtam, mtam);
    if (Mover==RIGHT && mx<width-mtam/4) {
      mx+=10;
    }
    if (Mover==LEFT && mx>mtam/4) {
      mx-=10;
    }
    if (Mover==UP && my>mtam/2) {
      my-=10;
    }
    if (Mover==DOWN && my<height-mtam/2) {
      my+=10;
    }
  }
}
