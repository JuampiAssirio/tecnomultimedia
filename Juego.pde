class Juego {
  String estado;
  Magos M;
  Camino C;
  //Reglas R;

  Juego() {
    M = new Magos();
    C = new Camino();
    estado = "mostrarReglas";
    //R = new Reglas();
  }
  
  void pintarJuego() {
    background(185, 169, 136);
    M.dibujarMagos();
    C.dibujarCamino();
    C.delimitaciones();
    
    /*if (estado.equals("mostrarReglas")) {
      R.mostrarReglas();
    } 
    else if (estado.equals("Juego")) {
      J.pintarJuego();
    }*/
    println(estado);
  }

  
  void moverMagos(int tecla) {
    M.moverMagos(tecla);
  }
  
  /*void Avanzar(){
    if (M.botonPressed(mouseX, mouseY, width-300, 450, 100, 55) && estado.equals("comienzo") && frameCount>5) {
      estado = "introduccion";
      frameCount = 0;
    }
    if (M.botonPressed(mouseX, mouseY, 200, 450, 100, 55) && estado.equals("comienzo") && frameCount>5) {
      estado = "creditos";
      frameCount = 0;
    }
  }*/
}
