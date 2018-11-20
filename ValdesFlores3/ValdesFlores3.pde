
  
import processing.sound.*;
SoundFile woof;
//SoundFile yey;


  

float equis = mouseX;
float ye = mouseY;
int view = 0; // screens

boolean turn=false;
boolean jelp=true;
int fight=1;
int count=0;
int mneh;
int rep1;
int bonk;



Doggo agnes;
Doggo felix;
Doggo baguette;
Doggo polux;
Doggo otto;

Doggo jugador1;
Doggo jugador2;

void setup(){                                                                        //HERE IS THE SETUP
size(710,710);
woof = new SoundFile(this, "woof.mp3");
//yey = new SoundFile(this, "crowd.mp3");

agnes = new Breed(0,0,4,4,3);
felix = new Breed(0,0,5,1,2);
baguette = new Breed(0,0,3,2,2);
polux = new Breed(0,0,3,2,4);
otto = new Breed(0,0,2,5,3);

jugador1 = new Breed(0,0,0,0,0);
jugador2 = new Breed(0,0,0,0,0);

}

void draw(){
  screen();
  if(mousePressed)
  {
    println(mouseX, mouseY);
  }
  }

void screen(){
  
  PFont font;
  font = createFont("Amandine.ttf", 32);
  textFont(font);
  PImage screen1;
  PImage bor;
  PImage ger;
  PImage pood;
  PImage mac;
  PImage bass;
  
  
  screen1 = loadImage("sign2.png");

  switch(view){
    //pantalla principal
  case 0:
 background(255);
 image(screen1,0,0);
  
  if (keyPressed) {
    if (key == ' ') {
      view = 1;
    }
  }
  break;
  
  //elegir personajes
  case 1:
  screen1 = loadImage("char!.png");
  image(screen1,0,0);
  bor = loadImage("bor.png");
  bor.resize(160, 160);
  image(bor,60,20);
  
  if (mouseX>57 && mouseY>26 && mouseX<245 && mouseY<196)
 {
   fill(140);
   text("Agnes", 560, 111);
   text("4/10", 569, 278);
   text("4/10", 565, 377);
   text("3/10", 564, 484);
   
 }
  
  ger = loadImage("ger.png");
  ger.resize(170, 170);
  image(ger,50,240);
  
  if (mouseX>48 && mouseY>232 && mouseX<238 && mouseY<416)
 {
   fill(140);
   text("Felix", 560, 111);
   text("5/10", 569, 278);
   text("1/10", 565, 377);
   text("2/10", 564, 484);
   
 }
  
  pood = loadImage("pood2.png");
  pood.resize(160, 160);
  image(pood,290,120);
  if (mouseX>291 && mouseY>116 && mouseX<440 && mouseY<277)
 {
   fill(140);
   text("Baguette", 550, 111);
   text("3/10", 569, 278);
   text("3/10", 565, 377);
   text("2/10", 564, 484);
   
 }
  
  mac = loadImage("mac2.png");
  mac.resize(160,100);
  image(mac,290,420);
  if (mouseX>278 && mouseY>379 && mouseX<462 && mouseY<552)
 {
   fill(140);
   text("Polux", 560, 111);
   text("3/10", 569, 278);
   text("2/10", 565, 377);
   text("5/10", 564, 484);
   
 }
  
  bass = loadImage("bass.png");
  bass.resize(200, 120);
  image(bass,40,520);
  if (mouseX>46 && mouseY>491 && mouseX<245 && mouseY<668)
 {
   fill(140);
   text("Otto", 560, 111);
   text("2/10", 569, 278);
   text("4/10", 565, 377);
   text("3/10", 564, 484);
   
 }
  
  if(!turn){
    fill(255,0,0);
    textSize(25);
   text("Jugador 1, \n da click", 533, 572);
   jugador1.id();
   }
   if(turn){
    fill(255,0,0);
    textSize(25);
    text("Jugador 2, \n da click", 535, 572);
    jugador2.id();
   }
   
   if(turn && count==4)
   {
     view=2;
   }
   
  break;

  case 2:
  println(jelp);
  screen1 = loadImage("fight!.png");
  image(screen1,0,0);
  
  pushMatrix();
  turn=true;
  mneh=0;
  jugador1.display(80,330);
  jugador1.puntaje(20,514);
  popMatrix();
  
  pushMatrix();
  turn=false;
  mneh=1;
  jugador2.display(480,330);
  jugador2.puntaje(670,514);
  popMatrix();
  
  mneh = fight%2;
  
  println(mneh);
  
  if(mneh==0){
   fill(0);
   textSize(25);
   jugador1.turno();
   jugador1.attack(20,514);
   }
   
   if(mneh==1){
    fill(0);
    textSize(25);
    jugador2.turno();
    jugador2.attack(670,514);
   }
   
  break;
  
  case 3:
  screen1 = loadImage("win!.png");
 // yey.play();
  
  
  image(screen1,0,0);
  jugador1.ganador();
  jugador2.ganador();
  
  
  
  if(mouseX>23 && mouseY>642 && mouseX<208 && mouseY<692){
    if(mousePressed==true){
     // yey.stop();
      reset();
    }
  }

  }
}


void reset()
{
   jugador1.reset();
   jugador2.reset();
   turn=false;
   fight=1;
   count=0;
   mneh=0;
   rep1=0;
   view = 0;
}


 