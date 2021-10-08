void muerteUno() {
  fill(0);
  textSize(18);
  text(lineas[4], 30, 100);
  text(lineas[5], width/7, 130);
  text(lineas[6], width/3, 160);
  text(lineas[7], 230, 190);
  botones(width-120, 530, 100, 55);
  if (botonOver(mouseX, mouseY, width-120, 530, 100, 55)) {
    fill(2, 2, 4);
  } else {
    fill(185, 169, 136);
  }
  textSize(17);
  text("Continuar", width-114, 550, 100, 55);
}



void muerteDos () {
  fill(0);
  text(lineas[56], 60, 50);
  text(lineas[57], 60, 80);
  text(lineas[58], 60, 110);
  botones(width-120, 530, 100, 55);
  if (botonOver(mouseX, mouseY, width-120, 530, 100, 55)) {
    fill(2, 2, 4);
  } else {
    fill(185, 169, 136);
  }
  textSize(17);
  text("Continuar", width-114, 550, 100, 55);
}


void fin() {
  fill(0);
  textSize(50);
  text("FIN", 350, 250, 100, 55);
  botones(350, 470, 100, 55);
  botones(350, 470, 100, 55);
  if (botonOver(mouseX, mouseY, 350, 470, 100, 55)) {
    fill(2, 2, 4);
  } else {
    fill(185, 169, 136);
  }
  textSize(23);
  text("Volver", width-440, 485, 100, 55);
}
