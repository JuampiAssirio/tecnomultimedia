class Juego {
  Camino C;
  Magos M;
  Juego() {
    M = new Magos();
    C = new Camino();
  }
  void pintarJuego() {
    background(0);
    M.dibujarMagos();
    C.dibujarCamino();
  }
  void moverMagos(int tecla) {
    M.moverMagos(tecla);
  }
}
