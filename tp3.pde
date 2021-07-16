/*Trabajo Práctico 3
Juan Pablo Assirio
Prof. José Luis Bugiolachi
https://youtu.be/ZWqWx90LWmI 
*/

int tam;
int cant = 5;
int x;

void setup() {
  size(500, 500);
  colorMode(HSB, 360, 100, 100);
  tam = width/cant;
  
}
void draw() {
  //background (255);
  for (int i=0; i<cant; i++) {
    for (int j=0; j<cant; j++) {
      push();
      translate(i*tam+tam/2, j*tam+tam/2); 
      float vel = map(mouseX, 0, width, 1, 5);
      rotate(radians(frameCount*vel));
      //fill(0);
    colorMode(HSB, width, 100, 100);
      stroke(x, 100, 100);
      rectMode(CENTER);
      rect(0, 0, tam, tam);
      pop();
    }
  }
}


      
