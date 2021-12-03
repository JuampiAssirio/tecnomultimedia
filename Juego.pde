class Juego {
  Hud H;
  Magos M;
  Obstaculos O;
  Obstaculos [] arbolSeco_ = new Obstaculos[4];
  Obstaculos [] piedras = new Obstaculos[4];
  Pantallas P;
  Botones B;

  Juego() {
    B = new Botones();
    P = new Pantallas();
    H = new Hud();
    M = new Magos();
    O = new Obstaculos();

    for (int i=0; i<arbolSeco_.length; i++) {
      arbolSeco_[i] = new Obstaculos();
    }
    for (int i=0; i<piedras.length; i++) {
      piedras[i] = new Obstaculos();
    }
    imageMode(CENTER);
  }

  void pintarJuego() {
    //if (estado.equals("Juego")) {
    background(185, 169, 136);
    H.dibujarContador();
    M.dibujarMagos();
    for (int i=0; i<4; i++) {
      arbolSeco_[i].dibujarArbol();
    }
    for (int p=0; p<4; p++) {
      piedras[p].dibujarObstaculos();
    }
    O.dibujarObstaculos();
    O.moverObstaculos();
    colisionArbol();
    moverPiedra();
    colisionPiedra();
    fill(0);
    rect(width, 0, 150, 150);

    /*if (Jestado.equals("perdiste")) {
     P.Perdiste();
     }
     
    /*if (Jestado.equals("Reglas")) {
     P.Reglas();
     }
    /*if (estado.equals("ganaste")) {
     text("ganaste pa", 100, 100);
     }
     println(Jestado);*/

    println(H.Vida);
    //}
  }


  void moverMagos(int Mover) { //mover al personaje
    M.moverMagos(Mover);
  }


  void colisionArbol() {  //colision  del personaje con el arbol
    for (int i=0; i<arbolSeco_.length; i++) {
      float choque2 = dist(M.mx, M.my, arbolSeco_[i].ax, arbolSeco_[i].ay);
      if ( choque2<M.mtam/2+arbolSeco_[i].tam/2) {
        H.Vida = 0;
      }
    }
  }

  void colisionPiedra() {//colision  del personaje con las piedras
    for (int i=0; i<piedras.length; i++) {
      float choque3 = dist(M.mx, M.my, piedras[i].ox, piedras[i].oy);
      if ( choque3<M.mtam/2+piedras[i].tam/2) {
        H.Vida = 0;
      }
    }
  }

  void moverPiedra() {  //para mover varias piedras
    for (int p=0; p<4; p++) {
      piedras[p].moverObstaculos();
    }
  }


  /* void valores0() {
   if (B.botonPressed(mouseX, mouseY, 350, 470, 100, 55) && estado.equals("perdiste")) {
   H.Vida = 1;
   M.mx = 78;
   M.my = 555;
   Jestado = "Reglas";
   H.contador = 0;
   }
   }
   }
  /*if (H.Vida == 1 && es
   }*/
}
