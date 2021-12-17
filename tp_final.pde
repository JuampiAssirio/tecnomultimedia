/* ---TRABAJO PRACTICO FINAL---*/
//Aventura Grafica + Video Juego de La Fabula de los Tres Hermanos (Harry Potter)//
//Assirio, Juan Pablo
//Legajo: 88208/2
//Comision 1
import processing.sound.*;

SoundFile fondo, perdiste, ganaste;
Historia H;
void setup() {
  size (800, 600);
  H = new Historia();
  fondo = new SoundFile(this,"fondoHP.mp3");
  fondo.loop();
  fondo.amp(0.4);
}

void draw() {
  H.dibujarHirtoria();
}

void mousePressed() {
  H.Avanzar();
}
