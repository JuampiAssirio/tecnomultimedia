class Camino {
  int cant = 15;
  int tam;
  boolean[][] cArriba = new boolean [cant][cant];
  boolean[][] cAbajo = new boolean [cant][cant];
  boolean[][] cDerecha = new boolean [cant][cant];//[Eje X]  [Eje Y]
  boolean[][] cIzquierda = new boolean [cant][cant];//[Eje X]  [Eje Y]

  Camino() {
    tam = width/cant;
    /*for (int i=0; i<cant; i++) {
     for (int j=0; j<cant; j++) {
     cArriba[i][0] = false;
     //cAbajo[i][j] = true;
     cIzquierda[0][j] = false;
     cDerecha[14][j] = false;
     }
     }*/
    for (int i=1; i<cant-4; i++) {
      cArriba[i][8] = true;
    }
    for (int i=2; i<cant-4; i++) {
      cAbajo[i][8] = true;
    }
    for (int i=8; i<cant; i++) {
      cDerecha[0][i]=true;
    }
    cIzquierda[2][9] = true;
    cIzquierda[2][10] = true;
    cIzquierda[2][11] = true;
  }



  void dibujarCamino() {
    for (int i=0; i<cant; i++) {
      for (int j=0; j<cant; j++) {
        stroke(0, 255, 0);
        strokeWeight(5);
        if (cArriba[i][j]) {
          line(i*tam, j*tam, i*tam+tam, j*tam); // linea arriba
        }
        if (cAbajo[i][j]) {
          line(i*tam, j*tam+tam, i*tam+tam, j*tam+tam); // linea abajo
        }
        if (cIzquierda[i][j]) {
          line(i*tam, j*tam, i*tam, j*tam+tam); // linea izquierda
        }
        if (cDerecha[i][j]) {
          line(i*tam+tam, j*tam, i*tam+tam, j*tam+tam); // linea derecho
        }
      }
    }
  }
}
