PFont fuente1;
int pantalla;
PImage Office, MichaelScott, Characters, Title;
int ix, iy;
float py;
int posX;
int color1, color2, color3;



void setup() {
  size (580, 300);
  fuente1 = loadFont("ArialMT-48.vlw");
  Office = loadImage ("the office.jpg");
  MichaelScott = loadImage ("michael-scott.jpg");
  Characters = loadImage ("Captura de pantalla 2020-04-15 a las 12.46.01.png");
  Title = loadImage ("the officeTitle.jpg");
  ix = -200;
  iy = 0;
  pantalla = 1;
  py = random (50, 150);
  posX = 0;
  color1 = (200); 
  color2 = (255); 
  color3 = (0);
}

void draw(){
   textAlign(CENTER);
   background(0);
   textFont(fuente1,100);
   println(frameCount);
   println(mouseX, mouseY); 
   if(pantalla == 1 && frameCount < 380 || frameCount > 0 && frameCount < 380){
       image(Office, 0, iy);
   }
  fill(50,50,255);
  ellipse(50, 550, 50, 50);
   if(frameCount >= 0 && frameCount < 300){
     
   float blanco = map(frameCount, 0, 160, 0, 255);
   
     fill(blanco);
     textFont(fuente1, 60);
     text("the office", 200, 250);
   }
    
     
   if(frameCount > 350 && frameCount < 550){
   image(MichaelScott, 0, 0, width, height);
   } 
   if(frameCount > 400 && frameCount < 550){
   fill(color1);
   textFont(fuente1, 30); 
   text("Starring", 340, 200); 
   fill(color1);
   textFont(fuente1, 35); 
   text("Steve Carrel", 370, 250);
   noFill();
   
   }
   
   
   if(frameCount > 700 && frameCount < 1675){
   //image(Characters,  width, height);
   } 
   if(frameCount > 600 && frameCount < 950){
   fill(color1);
   textFont(fuente1,30); 
   text("John Krasinski",300, 120);
   fill(color1);
   textFont(fuente1,30); 
   text("Jenna Fischer",300, 160);
   fill(color1);
   textFont(fuente1,30); 
   text("Rainn Wilson",300, 200);
   fill(color1);
   textFont(fuente1,30); 
   text("B. J. Novak",300, 240);
  }
  if(frameCount > 975 && frameCount < 1125){
   fill(color1);
   textFont(fuente1, 20); 
   text("DIRECT BY", 300, 80); 
   fill(color2);
   textFont(fuente1, 28); 
   text("Greg Daniels", 175, 130);
   fill(color2);
   textFont(fuente1, 28); 
   text("Michael Schur", 425, 130);
   fill(color1);
   textFont(fuente1, 20); 
   text("Music",300, 180); 
   fill(color2);
   textFont(fuente1, 28); 
   text("Jay Ferguson", 175, 220);
   fill(color2);
   textFont(fuente1, 28); 
   text("The Scranton Group", 425, 220);
   }
   if (frameCount > 1125 && frameCount < 1850){
   image (Title, posX, py);
   posX++;
   }
}
void mousePressed(){
  frameCount = 0; 
}
