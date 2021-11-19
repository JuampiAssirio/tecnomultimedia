class Camino {

  int cant = 15;
  int tam;
  //boolean[][] cLineas = new boolean [cant][cant];
  boolean[][] cArriba = new boolean [cant][cant];//[Eje X]  [Eje Y]
  boolean[][] cAbajo = new boolean [cant][cant];
  boolean[][] cDerecha = new boolean [cant][cant];
  boolean[][] cIzquierda = new boolean [cant][cant];

  Camino() {

    tam = width/cant;
    /*--------------------- POSICION LINEAS ---------------------*/

    for (int i=1; i<cant-4; i++) {
      cArriba[i][8] = true;
    }

    for (int i=2; i<cant-3; i++) {
      cAbajo[i][8] = true;
    }

    for (int i=8; i<cant; i++) {
      cDerecha[0][i]=true;
    }

    cIzquierda[2][9] = true;
    cIzquierda[2][10] = true;
    cIzquierda[2][11] = true;

    cDerecha[10][7]=true;
    cDerecha[10][6]=true;
    cIzquierda[12][8] = true;
    cIzquierda[12][7] = true;

    cIzquierda[12][6] = true;
    cIzquierda[12][5] = true;

    for (int i=5; i<cant-3; i++) {
      cArriba[i][5] = true;
    }

    for (int i=4; i<cant-4; i++) {
      cAbajo[i][5] = true;
    }
    cDerecha[3][5]=true;
    cDerecha[3][4]=true;
    cDerecha[3][3]=true;
    cIzquierda[5][4] = true;

    for (int i=4; i<cant-2; i++) {
      cArriba[i][3] = true;
    }

    for (int i=5; i<cant-1; i++) {
      cAbajo[i][3] = true;
    }

    for (int i=1; i<cant-11; i++) {
      cIzquierda[14][i] = true;
    }

    cArriba[13][2] = true;
    cArriba[12][2] = true;
    cDerecha[10][2]=true;
    cDerecha[10][1]=true;
    cArriba[11][1] = true;
    cArriba[12][1] = true;
    cDerecha[12][0]=true;
    cArriba[13][0] = true;
    cArriba[14][0] = true;
    cAbajo[14][0] = true;
    /*-----------------------------------------------*/
  }



  void dibujarCamino() {
    /*--------------------- LINEAS DIBUJADAS ---------------------*/

    for (int i=0; i<cant; i++) {
      for (int j=0; j<cant; j++) {
        stroke(0);
        strokeWeight(5);

        if (cArriba[i][j]) {
          //pushStyle();
          //stroke(255, 0, 0);
          line(i*tam, j*tam, i*tam+tam, j*tam); // LINEA ARRIBA
         // popStyle();
        }
        if (cAbajo[i][j]) {
          //pushStyle();
          //stroke(0, 152, 70);
          line(i*tam, j*tam+tam, i*tam+tam, j*tam+tam); // LINEA ABAJO
          //popStyle();
        }
        if (cIzquierda[i][j]) {
          //pushStyle();
          //stroke(0, 47, 187);
          line(i*tam, j*tam, i*tam, j*tam+tam); // LINEA IZQUIERDA
          //popStyle();
        }
        if (cDerecha[i][j]) {
          line(i*tam+tam, j*tam, i*tam+tam, j*tam+tam); // LINEA DERECHA
        }
      }
    }
  }

  void delimitaciones() {
    println(J.M.mx);
    println(J.M.my);
    float mx=J.M.mx;
    float my=J.M.my;
    for (int i=0; i<cant; i++) {
      for (int j=0; j<cant; j++) {
        if (cArriba[i][j]) {

          if (mx>i*tam && mx<i*tam+5 && my<j*tam+5 && my>j*tam) {
            rect(mx, my, J.M.mtam, J.M.mtam);
          }
          //line(i*tam, j*tam, i*tam+tam, j*tam); // LINEA ARRIBA
        }
        if (cAbajo[i][j]) {
          //if (mx>i*tam && mx<i*tam+5 && my>j*tam && my>j*tam) {
          //rect(mx, my, J.M.mtam, J.M.mtam);
        }
        //line(i*tam, j*tam+tam, i*tam+tam, j*tam+tam); // LINEA ABAJO

        if (cIzquierda[i][j]) {
          //line(i*tam, j*tam, i*tam, j*tam+tam); // LINEA IZQUIERDA
        }
        if (cDerecha[i][j]) {
          //line(i*tam+tam, j*tam, i*tam+tam, j*tam+tam); // LINEA DERECHA
        }
      }
    }
  }
}
