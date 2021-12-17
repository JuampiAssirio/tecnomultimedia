class Hud {
  int contador;
  int Vida;
  Hud() {
    Vida = 1;
  }
  void dibujarContador() {
    contador++;
    if (contador > width*2) {
      Vida = 0;
    }
    fill(0);
    rect(0, 600, contador, 20);
    println(contador);
  }
}
