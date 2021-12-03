class Historia { //
  String estado;
  Botones B; //Declaramos las Propiedades
  Pantallas P;
  Juego J;
  Historia() { //aquí le asignamos propiedades a los metodos
    B = new Botones();
    P = new Pantallas();
    J = new Juego();
    estado = "comienzo";
  }

  void dibujarHirtoria() { //aqui dibujamos los metodos
    background(0);
    if (estado.equals("comienzo")) {
      P.comienzo();
    } else if (estado.equals("introduccion")) {
      P.introduccion();
    } else if (estado.equals("creditos")) {
      P.creditos();
    } else if (estado.equals("bifurcacionUno")) {
      P.bifurcacionUno();
    } else if (estado.equals("muerteUno")) {
      P.muerteUno();
    } else if (estado.equals("continuarUno")) {
      P.continuarUno();
    } else if (estado.equals("laMuerte")) {
      P.laMuerte();
    } else if (estado.equals("regalos")) {
      P.regalos();
    } else if (estado.equals("HermanoMayor")) {
      P.HermanoMayor();
    } else if (estado.equals("HermanoMedio")) {
      P.HermanoMedio();
    } else if (estado.equals("HermanoMenor")) {
      P.HermanoMenor();
    } else if (estado.equals("continuarDos")) {
      P.continuarDos();
    } else if (estado.equals("continuarTres")) {
      P.continuarTres();
    } else if (estado.equals("bifurcacionDos")) {
      P.bifurcacionDos();
    } else if (estado.equals("HerMenorDos")) {
      P.HerMenorDos();
    } else if (estado.equals("muerteDos")) {
      P.muerteDos();
    } else if (estado.equals("fin")) {
      P.fin();
    } else if (estado.equals("Juego")) {
      J.pintarJuego();
    } else if (estado.equals("Reglas")) {
      P.Reglas();
    } /*else if (J.H.Vida == 0 && estado.equals("Juego")) {
      P.Perdiste();
      estado = "perdiste";
    }*/

    if (keyPressed) {
      J.M.moverMagos(keyCode);
    }

    /*if (B.botonPressed(mouseX, mouseY, 350, 470, 100, 55) && estado.equals("perdiste")) {
      J.H.Vida = 1;
      J.M.mx = 78;
      J.M.my = 555;
      estado = "Reglas";
      J.H.contador = 0;
    }*/

    println(estado);
  }

  void Avanzar() {
    if (B.botonPressed(mouseX, mouseY, width-300, 450, 100, 55) && estado.equals("comienzo") && frameCount>5) {
      estado = "introduccion";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 200, 450, 100, 55) && estado.equals("comienzo") && frameCount>5) {
      estado = "creditos";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 350, 470, 100, 55) && estado.equals("creditos") && frameCount>5) {
      estado = "comienzo";
      frameCount = 0;
    }

    if (B.botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("introduccion") && frameCount>5) {
      estado = "Reglas";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 350, 470, 110, 55) && estado.equals("Reglas") && frameCount>5) {
      estado = "Juego";
      frameCount = 0;
    }
    /*if (B.botonPressed(mouseX, mouseY, 350, 470, 100, 55) && estado.equals("perdiste")) {
      J.H.Vida = 1;
      J.M.mx = 78;
      J.M.my = 555;
      estado = "Reglas";
      J.H.contador = 0;
    }
    /*if (B.botonPressed(mouseX, mouseY, 350, 470, 100, 55) && estado.equals("perdiste") && frameCount>5) {
     estado = "Reglas";
     frameCount = 0;
     }*/
    if (B.botonPressed(mouseX, mouseY, 60, 470, 190, 55) && estado.equals("bifurcacionUno") && frameCount>5) {
      estado = "muerteUno";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, width-250, 470, 190, 55) && estado.equals("bifurcacionUno") && frameCount>5) {
      estado = "continuarUno";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 15, 530, 100, 55) && estado.equals("continuarUno") && frameCount>5) {
      estado = "laMuerte";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("laMuerte") && frameCount>5) {
      estado = "regalos";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("regalos") && frameCount>5) {
      estado = "HermanoMayor";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("HermanoMayor") && frameCount>5) {
      estado = "HermanoMedio";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("HermanoMedio") && frameCount>5) {
      estado = "HermanoMenor";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("HermanoMenor") && frameCount>5) {
      estado = "continuarDos";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("continuarDos") && frameCount>5) {
      estado = "continuarTres";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("continuarTres") && frameCount>5) {
      estado = "bifurcacionDos";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, width-250, 470, 190, 55) && estado.equals("bifurcacionDos") && frameCount>5) {
      estado = "HerMenorDos";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 60, 470, 190, 55) && estado.equals("bifurcacionDos") && frameCount>5) {
      estado = "muerteDos";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("HerMenorDos") && frameCount>5) {
      estado = "fin";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("muerteDos") && frameCount>5) {
      estado = "fin";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, 350, 470, 100, 55) && estado.equals("fin") && frameCount>5) {
      estado = "comienzo";
      frameCount = 0;
    }
    if (B.botonPressed(mouseX, mouseY, width-120, 530, 100, 55) && estado.equals("muerteUno") && frameCount>5) {
      estado = "fin";
      frameCount = 0;
    }
  }
}
