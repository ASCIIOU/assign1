int x, y, z, m, n, r;

PImage Img0;
PImage Img1;
PImage Img2;
PImage Img3;
PImage Img4;
PImage Img5;



void setup () {
  size(640,480) ;  
  
  n=0;
  r=640;


  x=floor(random(201));
  y=floor(random(50, 540));
  z=floor(random(50, 440));
  m=0;
  
  
  Img0 = loadImage("img/fighter.png"); 
  Img1 = loadImage("img/hp.png");
  Img2 = loadImage("img/treasure.png");
  Img3 = loadImage("img/enemy.png");
  Img4 = loadImage("img/bg1.png");
  Img5 = loadImage("img/bg2.png");
  
 

  
}

void draw() {


 

  
  image(Img4, n, 0);
  image(Img5, r, 0);
 
   n++;
   r++;
   if(n>640){n=-640;n++;}
   if(r>640){r=-640;r++;}
 
   stroke(225, 0, 0);
 fill(225, 0, 0);
 rect(25, 25, x, 20);
  
  
  image(Img0, 580, 240);
  image(Img1, 20, 20);
  image(Img2, y, z);
  image(Img3, m, 100);
  
  m+=3;
  m %=640;
  
}
