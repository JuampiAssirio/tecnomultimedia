class Pantallas {
  String [] lineas;
  PImage [] Historia = new PImage[47];
  float anchoimg, altoimg;
  PFont tip;
  Botones B;

  Pantallas() {
    B = new Botones();
    for (int h=0; h<Historia.length; h++) {
      Historia[h] = loadImage("Historia"+h+".jpg");
    }
    anchoimg = 750;
    altoimg = height/2;
    tip = loadFont("BIZ-UDPMincho-Medium-48.vlw");
    lineas = loadStrings("cuento.txt");
    textFont(tip);
  }

  void comienzo() { //metodos
    background(0);
    imageMode(CENTER);
    image(Historia[0], width/2, height/2);
    textSize(50);
    if (frameCount >= 0) {
      float blanco = map(frameCount, 0, 160, 0, 255);
      fill(blanco);
      text("La Fábula de los 3 Hermanos", 25, 55);
      B.dibujarBoton(200, 450, 100, 55); //Izquierda
      B.dibujarBoton(width-300, 450, 100, 55); //Derecha
      if (B.botonOver(mouseX, mouseY, width-300, 450, 100, 55) || B.botonOver(mouseX, mouseY, 200, 450, 100, 55)) {
        fill(2, 2, 4);
      } else {
        fill(185, 169, 136);
      }
      textSize(18);
      text("Historia", width-285, 470, 100, 55);
      text("Creditos", 210, 470, 100, 55);
    }
  }


  void introduccion() {
    //imageMode(CENTER);
    image(Historia[1], 400, 300, anchoimg, altoimg);
    textSize(25);
    fill(185, 169, 136);
    text(lineas[0], 50, 100);
    text(lineas[1], 200, 130);
    B.dibujarBoton(width-120, 530, 100, 55);
    if (B.botonOver(mouseX, mouseY, width-120, 530, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(17);
    text("Continuar", width-114, 550, 100, 55);
  }


  void bifurcacionUno() {
    textSize(25);
    fill(185, 169, 136);
    text(lineas[2], 50, 100);
    text(lineas[3], 200, 130);
    B.dibujarBoton(width-250, 470, 190, 55); //Cruzar con magia
    B.dibujarBoton(60, 470, 190, 55); //Cruzar sin magia
    if (B.botonOver(mouseX, mouseY, width-250, 470, 190, 55) || B.botonOver(mouseX, mouseY, 60, 470, 190, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(19);
    text("Cruzar con mágia", width-242, 505);
    text("Cruzar sin mágia", 70, 505);
  }


  void muerteUno() {
    fill(185, 169, 136);
    textSize(18);
    text(lineas[4], 30, 100);
    text(lineas[5], width/7, 130);
    text(lineas[6], width/3, 160);
    text(lineas[7], 230, 190);
    B.dibujarBoton(width-120, 530, 100, 55);
    if (B.botonOver(mouseX, mouseY, width-120, 530, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(17);
    text("Continuar", width-114, 550, 100, 55);
  }



  void continuarUno() {
    if (frameCount<=10) {
      image(Historia[2], 400, 300, anchoimg, altoimg);
    }
    if (frameCount>10 && frameCount<=20) {
      image(Historia[3], 400, 300, anchoimg, altoimg);
    }
    if (frameCount>20 && frameCount<=30) {
      image(Historia[4], 400, 300, anchoimg, altoimg);
    }
    if (frameCount>30 && frameCount<=40) {
      image(Historia[5], 400, 300, anchoimg, altoimg);
    }
    if (frameCount>40 && frameCount<=50) {
      image(Historia[6], 400, 300, anchoimg, altoimg);
    }
    if (frameCount>50 && frameCount<=60) {
      image(Historia[7], 400, 300, anchoimg, altoimg);
    }
    if (frameCount>60 && frameCount<=70) {
      image(Historia[8], 400, 300, anchoimg, altoimg);
    }
    if (frameCount>70 && frameCount<=80) {
      image(Historia[9], 400, 300, anchoimg, altoimg);
    }
    if (frameCount>80 && frameCount<=90) {
      image(Historia[10], 400, 300, anchoimg, altoimg);
    }
    if (frameCount>90 && frameCount<=100) {
      image(Historia[11], 400, 300, anchoimg, altoimg);
    }
    if (frameCount>100 && frameCount<=110) {
      image(Historia[12], 400, 300, anchoimg, altoimg);
    }
    if (frameCount>110 && frameCount<=120) {
      image(Historia[13], 400, 300, anchoimg, altoimg);
    }
    if (frameCount>120 && frameCount<=130) {
      image(Historia[14], 400, 300, anchoimg, altoimg);
    }
    if (frameCount>130 && frameCount<=140) {
      image(Historia[15], 400, 300, anchoimg, altoimg);
    }
    if (frameCount>140) {
      frameCount = 0;
    }

    textSize(25);
    fill(185, 169, 136);
    ;
    text(lineas[9], width/7, 70);
    text(lineas[10], width/6, 100);
    text(lineas[11], width/3, 130);
    B.dibujarBoton(15, 530, 100, 55);
    if (B.botonOver(mouseX, mouseY, 15, 530, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(17);
    text("Continuar", 20, 550, 100, 55);
  }



  void laMuerte() {
    image(Historia[16], 400, 350, anchoimg, altoimg);
    textSize(20);
    fill(185, 169, 136);
    text(lineas[13], 15, 80);
    text(lineas[14], 16, 110);
    text(lineas[15], width/3, 140);
    text(lineas[16], 250, 170);
    B.dibujarBoton(width-120, 530, 100, 55);
    if (B.botonOver(mouseX, mouseY, width-120, 530, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(17);
    text("Continuar", width-114, 550, 100, 55);
  }


  void regalos() {
    //image(Historia[17], 400, 350, anchoimg, altoimg);
    if (frameCount<=40) {
      image(Historia[17], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>40 && frameCount<=80) {
      image(Historia[18], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>80) {
      frameCount = 0;
    }
    textSize(18);
    fill(185, 169, 136);
    text(lineas[18], 20, 80);
    text(lineas[19], width/5, 110);
    B.dibujarBoton(width-120, 530, 100, 55);
    if (B.botonOver(mouseX, mouseY, width-114, 550, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }

    textSize(17);
    text("Continuar", width-114, 550, 100, 55);
  }



  void HermanoMayor() {
    if (frameCount<=15) {
      image(Historia[19], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>15 && frameCount<=30) {
      image(Historia[20], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>30 && frameCount<=45) {
      image(Historia[21], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>45 && frameCount<=60) {
      image(Historia[22], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>60 && frameCount<=75) {
      image(Historia[23], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>75 && frameCount<=90) {
      image(Historia[24], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>90) {
      frameCount = 0;
    }
    textSize(18);
    fill(185, 169, 136);
    text(lineas[21], width/6, 80);
    text(lineas[22], width/5, 110);
    B.dibujarBoton(width-120, 530, 100, 55);
    if (B.botonOver(mouseX, mouseY, width-114, 550, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(17);
    text("Continuar", width-114, 550, 100, 55);
  }



  void HermanoMedio() {
    if (frameCount<=15) {
      image(Historia[25], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>15 && frameCount<=30) {
      image(Historia[26], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>30 && frameCount<=45) {
      image(Historia[27], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>45 && frameCount<=60) {
      image(Historia[28], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>60 && frameCount<=75) {
      image(Historia[29], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>75) {
      frameCount = 0;
    }
    textSize(18);
    fill(185, 169, 136);
    ;
    text(lineas[24], width/7, 80);
    text(lineas[25], width/6, 110);
    B.dibujarBoton(width-120, 530, 100, 55);
    if (B.botonOver(mouseX, mouseY, width-120, 530, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(17);
    text("Continuar", width-114, 550, 100, 55);
  }



  void HermanoMenor() {
    if (frameCount<=15) {
      image(Historia[30], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>15 && frameCount<=30) {
      image(Historia[31], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>30 && frameCount<=45) {
      image(Historia[32], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>45 && frameCount<=60) {
      image(Historia[33], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>60 && frameCount<=75) {
      image(Historia[34], 400, 350, anchoimg, altoimg);
    }
    if (frameCount>75) {
      frameCount = 0;
    }
    textSize(18);
    fill(185, 169, 136);
    ;
    text(lineas[27], 60, 80);
    text(lineas[28], 62, 110);
    text(lineas[29], 64, 140);
    B.dibujarBoton(width-120, 530, 100, 55);
    if (B.botonOver(mouseX, mouseY, width-120, 530, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(17);
    text("Continuar", width-114, 550, 100, 55);
  }



  void continuarDos() {
    background(0);
    fill(185, 169, 136);
    textSize(20);
    text(lineas[31], 60, 80);
    text(lineas[32], width/4, 110);
    text(lineas[33], 20, 140);
    text(lineas[34], 60, 170);
    text(lineas[35], 320, 200);
    text(lineas[36], width/4, 230);
    image(Historia[35], 400, 400, anchoimg, altoimg);

    B.dibujarBoton(width-120, 530, 100, 55);
    if (B.botonOver(mouseX, mouseY, width-120, 530, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(17);
    text("Continuar", width-114, 550, 100, 55);
  }



  void continuarTres() {
    background(0);
    fill(185, 169, 136);
    textSize(18);
    text(lineas[38], 60, 50);
    text(lineas[39], 60, 80);
    text(lineas[40], 60, 110);
    text(lineas[41], 60, 140);
    text(lineas[42], 60, 170);
    text(lineas[43], 60, 200);
    text(lineas[44], 60, 230);
    text(lineas[45], 60, 260);
    text(lineas[46], 60, 290);
    if (frameCount<=15) {
      image(Historia[36], 400, 450, anchoimg, altoimg);
    }
    if (frameCount>15 && frameCount<=30) {
      image(Historia[37], 400, 450, anchoimg, altoimg);
    }
    if (frameCount>30 && frameCount<=45) {
      image(Historia[38], 400, 450, anchoimg, altoimg);
    }
    if (frameCount>45 && frameCount<=60) {
      image(Historia[39], 400, 450, anchoimg, altoimg);
    }
    if (frameCount>60 && frameCount<=75) {
      image(Historia[40], 400, 450, anchoimg, altoimg);
    }
    if (frameCount>75 && frameCount<=90) {
      image(Historia[41], 400, 450, anchoimg, altoimg);
    }
    if (frameCount>90 && frameCount<=105) {
      image(Historia[42], 400, 450, anchoimg, altoimg);
    }
    if (frameCount>105 && frameCount<=120) {
      image(Historia[43], 400, 450, anchoimg, altoimg);
    }
    if (frameCount>120 && frameCount<=135) {
      image(Historia[44], 400, 450, anchoimg, altoimg);
    }
    if (frameCount>135 && frameCount<=150) {
      image(Historia[45], 400, 450, anchoimg, altoimg);
    }
    if (frameCount>150 && frameCount<=165) {
      image(Historia[46], 400, 450, anchoimg, altoimg);
    }
    if (frameCount>165) {
      frameCount = 0;
    }
    B.dibujarBoton(width-120, 530, 100, 55);
    if (B.botonOver(mouseX, mouseY, width-120, 530, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(17);
    text("Continuar", width-114, 550, 100, 55);
  }



  void bifurcacionDos() {
    fill(185, 169, 136);
    textSize(20);
    text(lineas[48], width/7, 50);
    text(lineas[49], width/3, 80);
    B.dibujarBoton(width-250, 470, 190, 55);
    B.dibujarBoton(60, 470, 190, 55);
    if (B.botonOver(mouseX, mouseY, width-250, 470, 190, 55) || B.botonOver(mouseX, mouseY, 60, 470, 190, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(18);
    text("Quitárse la capa", width-230, 505);
    text("No quitárse la capa", 63, 505);
  }



  void HerMenorDos() {
    fill(185, 169, 136);
    text(lineas[51], 60, 50);
    text(lineas[52], 60, 80);
    text(lineas[53], 60, 110);
    text(lineas[54], 60, 140);
    B.dibujarBoton(width-120, 530, 100, 55);
    if (B.botonOver(mouseX, mouseY, width-120, 530, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(17);
    text("Continuar", width-114, 550, 100, 55);
  }



  void creditos() {
    textSize(30);
    //textAlign(CENTER);
    fill(185, 169, 136);
    text("Los Creditos:", width-500, height/8);
    text("Juan Pablo Assirio", width-540, 200);
    text("Nº Legajo: 88208/2", width-540, 300);
    text("Cuento extraido de la novela de Harry Potter", 45, 400);
    B.dibujarBoton(350, 470, 100, 55);
    if (B.botonOver(mouseX, mouseY, 350, 470, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(23);
    text("Volver", width-440, 485, 100, 55);
  }



  void muerteDos () {
    textSize(17);
    fill(185, 169, 136);
    text(lineas[56], 60, 50);
    text(lineas[57], 60, 80);
    text(lineas[58], 60, 110);
    B.dibujarBoton(width-120, 530, 100, 55);
    if (B.botonOver(mouseX, mouseY, width-120, 530, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    //textSize(17);
    text("Continuar", width-114, 550, 100, 55);
  }


  void fin() {
    fill(185, 169, 136);
    textSize(50);
    text("FIN", 350, 250, 100, 55);
    B.dibujarBoton(350, 470, 100, 55);
    B.dibujarBoton(350, 470, 100, 55);
    if (B.botonOver(mouseX, mouseY, 350, 470, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(23);
    text("Volver", width-440, 485, 100, 55);
  }


  /********* Pantallas Juego*********/

  void Reglas() {
    background(0);
    textSize(30);
    //textAlign(CENTER);
    fill(185, 169, 136);
    text("Reglas del Juego:", width-550, height/8);
    rect(60, 110, 710, 230, 20);
    fill(0);
    text("Debes llevar a los magos hasta el río.", 110, 150);
    text("¡Cuidado! no debes salir del camino", 120, 200);
    text("y apurate antes de que se acabe el tiempo.", 80, 250);
    text("Para mover a los Magos, utiliza las flechas.", 80, 300);
    B.dibujarBoton(350, 470, 100, 55);
    if (B.botonOver(mouseX, mouseY, 350, 470, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(18);
    text("Continuar", 354, 489, 100, 55);
  }

  void Perdiste() {
    background(0);
    textSize(30);
    fill(185, 169, 136);
    text("baneado por bobina", 100, 100);
    B.dibujarBoton(350, 470, 100, 55);
    if (B.botonOver(mouseX, mouseY, 350, 470, 100, 55)) {
      fill(2, 2, 4);
    } else {
      fill(185, 169, 136);
    }
    textSize(18);
    text("Volver a jugar", 354, 489, 100, 55);
  }
}
