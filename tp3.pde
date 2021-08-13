/*
Trabajo Practico Nº3 (RECU)
Juan Pablo Assirio
Prof. Jose Luis Bugiolachi
Comision 1
Link del video: https://youtu.be/ALOpWtZ4Sow
*/


int cant = 35;
PFont fuente1;

void setup() {
  size(700, 400);
  fuente1 = loadFont("Arial-BoldMT-48.vlw");
}

void draw() {
  background(0);

  //TEXTO COMIENZO
  if (frameCount >= 0 && frameCount < 400) {
    fill(255);
    textAlign(CENTER);
    textFont(fuente1, 25);
    text("Para que esta ilusión optica funcione correctamente,", width/2, 120);
    textFont(fuente1, 25);
    text("debe mantener la vista en el cuadrado rojo", width/2, 160);
    textFont(fuente1, 25);
    text("durante al menos 1 minuto y luego ver", width/2, 200);
    textFont(fuente1, 25);
    text("hacia cualquier dirección.", width/2, 240);
  }
  if (frameCount >= 400 && frameCount < 600) {
    textFont(fuente1, 25);
    text("comienza en 3, 2, 1...", width/2, 120);
  }


  ///////////CUADRADOS ATRAS/////////////////////////////////////////////////////////////
  if (frameCount >= 600 && frameCount < 2500) {

    for (int j=0; j<cant; j++) {
      float tam = map(j, 0, cant-1, width, 20);
      if (j%2==0) {
        fill(0);
      } else {
        fill(255);
      }
      pushMatrix();
      translate(width/2, height/2);
      float mov = map(mouseX, 0, width, -3, -3);
      rotate(radians(frameCount*mov));
      rect(0, 0, tam, tam);
      popMatrix();
      fill(255, 0, 0);
      rect (width/2, height/2, 10, 10);
    }



    ////////////CUADRADOS ADELANTE//////////////////////////////////////////////////////
    for (int i=0; i<cant; i++) {

      float tam = map(i, 0, cant-1, width, 20);
      rectMode(CENTER);

      if (i%2==0) {
        fill(0);
      } else {
        fill(255);
      }

      pushMatrix();
      translate(width/2, height/2);
      float mov = map(mouseX, 0, width, 4, 4);
      rotate(radians(frameCount*mov));
      rect(0, 0, tam, tam);
      popMatrix();
      fill(255, 0, 0);
      rect (width/2, height/2, 10, 10);
    }
  }
  if (frameCount >= 2500 && frameCount < 2800) {
    textFont(fuente1, 50);
    text("BASTA", width/2, height/2);
  }
}

void mousePressed() {
  frameCount = 0;
}
