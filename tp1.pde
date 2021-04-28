size (500, 400);
background (255);
stroke(100);
strokeWeight(1);

//Triángulo y lineas dentro del rombo.
triangle (250, 113, 175, 240, 324, 240);
line (250, 100 , 250, 283);
line (100, 113, 400, 283);
line (400, 113,100,283);

//Colores Primarios y Secundarios:

fill (255, 0, 0);//Triángulo Rojo.
triangle (200, 113, 250, 27, 300, 113);

fill (255, 255, 0);//Triángulo Amarillo.
triangle (300, 113, 400, 113, 350, 200);

fill(0, 255, 0);//Triángulo Verde.
triangle (350, 200, 400, 283, 300, 283); 

fill(0, 255, 255);//Triángulo Cian.
triangle (300, 283, 250, 373, 200, 283);

fill(0, 0, 255);//Triángulo Azul.
triangle (200, 283, 150, 200, 100, 283);

fill(255, 0, 255);//Triángulo Magenta.
triangle (150, 200, 100, 113, 200, 113);


//Colores Terciarios:
fill (255,180,0); //Naranja.
quad (300, 113, 333, 113, 333, 46, 279, 77); 

fill (0,255,180);//Verde cian.
quad (300, 283, 333, 283, 333, 346, 281, 317);

fill (180, 0, 255);//Violeta.
quad (67, 200, 129, 164, 150, 200, 130, 232);

fill (255, 0, 180);//Fucsia.
quad (200, 113, 222, 77, 167, 46, 167, 113);

fill(180, 255, 0);//lima.
quad (350, 200, 371, 235, 435, 200, 371, 165);

fill(0, 180, 255); //Azur o cerúleo.
quad (167, 346, 218, 317, 200, 283, 167,283);
