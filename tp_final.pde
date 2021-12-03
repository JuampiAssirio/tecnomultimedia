/* ---TRABAJO PRACTICO FINAL---*/
//Aventura Grafica + Video Juego de La Fabula de los Tres Hermanos (Harry Potter)//
//Assirio, Juan Pablo
//Legajo: 88208/2
//Comision 1

Historia H;
void setup() {
  size (800, 600);
  H = new Historia();
}

void draw() {
  H.dibujarHirtoria();
}

void mousePressed() {
  H.Avanzar();
}
