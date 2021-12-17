class Juego {
  Hud H;
  Magos M;
  Obstaculos O;
  Botones B;
  Obstaculos [] arbolSeco_ = new Obstaculos[4];
  Obstaculos [] piedras = new Obstaculos[3];
  PImage rio;
  String estado;


  Juego() {
    rio = loadImage("rio.png");
    B = new Botones();
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
    estado = "Start";
    
  }

  void pintarJuego() {
    Avanzar();
    background(185, 169, 136);

    //---------- REGLAS ----------//
    if (estado.equals("Start")) {
      background(0);
      textSize(30);
      fill(185, 169, 136);
      text("Reglas del Juego:", width/3, height/8);
      rect(50, 180, 705, 260, 20);
      fill(0);
      text("Debes llevar a los magos hasta el río.", 115, 220);
      text("¡Cuidado con los arboles y las piedras!", 105, 270);
      text("si te los chocas, pierdes.", 220, 320);
      text("Para mover a los Magos, utiliza las flechas.", 70, 370);
      text("Para iniciar el juego, haz ¡click!", width/5, 420);
    }

    //---------- JUEGO  ----------//
    if (estado.equals("Juego")) {
      image(rio, 800, height/2);
      H.dibujarContador();
      M.dibujarMagos();
      for (int i=0; i<4; i++) {
        arbolSeco_[i].dibujarArbol();
      }
      for (int p=0; p<3; p++) {
        piedras[p].dibujarObstaculos();
      }
      O.dibujarObstaculos();
      O.moverObstaculos();
      colisionArbol();
      moverPiedra();
      colisionPiedra();
      O.dibujarCartel();
      Ganar();
    }


    //---------- ESTADO PERDISTE ----------//
    if (estado.equals("perdiste")) {
      background(0);
      textSize(40);
      //textAlign(CENTER);
      fill(255, 0, 0);
      text("Perdiste", 330, height/8);
      fill(185, 169, 136);
      rect(110, 110, 610, 195, 20);
      fill(0);
      textSize(30);
      text("Chocaste con un Obstaculo del", 180, 150);
      text("camino sinuoso y solitario.", 206, 200);
      text("Para reiniciar el juego, haz ¡click!", width/5, 250);
    }


    //---------- ESTADO GANASTE ----------//
    if (estado.equals("ganaste")) {
      background(0);
      textSize(40);
      fill(185, 169, 136);
      text("¡Lo Lograste!", 270, height/8);
      rect(95, 150, 600, 220, 20);
      fill(0);
      text("Los 3 hermanos llegaron", 140, 250);
      text("al río", 350, 300);
      B.dibujarBoton(350, 470, 118, 55);
      if (B.botonOver(mouseX, mouseY, 350, 470, 100, 55)) {
        fill(2, 2, 4);
      } else {
        fill(185, 169, 136);
      }
      textSize(20);
      text("Continuar", 356, 505);
      //frameCount = 0;
    }

    if (keyPressed) {
      M.moverMagos(keyCode); //para que el personaje se mueva más fluido, lo ejecuto en void Draw.
    }
    println(H.Vida);
    println(estado);
  }

  void moverPiedra() {  //para mover varias piedras
    for (int p=0; p<3; p++) {
      piedras[p].moverObstaculos();
    }
  }


  void colisionArbol() {  //colision  del personaje con el arbol
    for (int i=0; i<arbolSeco_.length; i++) {
      float choque2 = dist(M.mx, M.my, arbolSeco_[i].ax, arbolSeco_[i].ay);
      if ( choque2<M.mtam/2+arbolSeco_[i].tam/2) {
        H.Vida = 0;
      }
    }
  }

  void colisionPiedra() { //colision de las piedras
    for (int i=0; i<piedras.length; i++) {
      float choque3 = dist(M.mx, M.my, piedras[i].ox, piedras[i].oy);
      if ( choque3<M.mtam/2+piedras[i].tam/2) {
        H.Vida = 0;
      }
    }
  }

  void Ganar() {
    float choque4 = dist(M.mx, M.my, O.cx, O.cy);
    if ( choque4<M.mtam/2+O.tam/2) {
      estado = "ganaste";
      frameCount = 0;
    }
  }



  void Avanzar() {
    if (mousePressed) {
      if (estado.equals("Start") && frameCount>10) {
        estado = "Juego";
      }
      if (estado.equals("perdiste") || estado.equals("ganaste")) {
        estado = "Start";
        M.mx = 78;
        M.my = 555;
        H.Vida = 1;
        H.contador = 0;
        O.ax = random(100, 600);
        O.ay = random(100, 400);
        O.ox = random(100, width);
        O.vel = random(3, 7);
        O.oy = 0;
        frameCount = 0;
      }
      /*if (B.botonPressed(mouseX, mouseY, 350, 470, 118, 55) && estado.equals("ganaste") && frameCount>5) {
        estado = "bifurcacionUno";
        frameCount = 0;
      }*/
    }
    if (H.Vida == 0 && estado.equals("Juego")) {
      estado = "perdiste";
      frameCount = 0;
    }
    /*if (B.botonPressed(mouseX, mouseY, 350, 470, 118, 55) && estado.equals("ganaste") && frameCount>5) {
     estado = "bifurcacionUno";
     frameCount = 0;
     }*/
  }
}
