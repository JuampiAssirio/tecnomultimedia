/* ---TRABAJO PRACTICO N5---*/
//Video Juego de La Fabula de los Tres Hermanos (Harry Potter)//
//Assirio, Juan Pablo
//Legajo 88208/2
//Comision 1
//URL: https://youtu.be/c9k8TugaUM8


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

/*void mousePressed(){
  J.Avanzar();
}*/
