Juego J;
void setup() {
  size (800, 600);
  J = new Juego();
}

void draw() {
  J.pintarJuego();
}

void keyPressed() {
  J.moverMagos(keyCode);
}
