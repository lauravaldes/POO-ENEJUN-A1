
int view = 0; // screens
int p1 = 0;
int p2;
int x1 = 271; //876
int y1 = 209; //221
int ganador;

int rep1 = 0;
int rep2 = 0;

class Perrito
{
  int ob;
  int tlk;
  int fnd;
  int player;
  int num1;
  int num2;
  int rep;
  int ob1;
  int tlk1;
  int fnd1;
  int ob2;
  int tlk2;
  int fnd2;
  int id;
  int id1;
  int id2;

  int turno = 1;
  

  Perrito(int ob_, int tlk_, int fnd_, int rep_, int id_)
  {
   ob = ob_;
   tlk = tlk_;
   fnd = fnd_;
   rep = rep_;
   id = id_;

  }
  
void player1(int num1){
  switch(num1)
  {
    case 1:
    pushMatrix();
    scale(1.05);
    x1=271;
    bindi();
    popMatrix();
    bindi.id =1;
    id1 = bindi.id;
    ob1 = bindi.ob; 
    tlk1 = bindi.tlk;
    fnd1 = bindi.fnd;
    bindi.power();
    puntaje1(rep1);
    break;
    
    case 2:
    pushMatrix();
    translate(-200,0);
    x1=271;
    scale(1.05);
    felix();
    popMatrix();
    felix.id = 2;
    id1 = felix.id;
    ob1 = felix.ob;
    tlk1 = felix.tlk;
    fnd1 = felix.fnd;
    felix.power();
    puntaje1(rep1);
    break;
    
    case 3:
    pushMatrix();
    translate(-500,0);
    x1=271;
    scale(1.05);
    baguette();
    popMatrix();
    baguette.id = 3;
    id1 = baguette.id;
    ob1 = baguette.ob;
    tlk1 = baguette.tlk;
    fnd1 = baguette.fnd;
    baguette.power();
    puntaje1(rep1);
    break;
    
    case 4:
    pushMatrix();
    translate(-700,0);
    x1=271;
    scale(1.05);
    polux();
    popMatrix();
    polux.id = 4;
    id1 = polux.id;
    ob1 = polux.ob;
    tlk1 = polux.tlk;
    fnd1 = polux.fnd;
    polux.power();
    puntaje1(rep1);
    break;
    
    case 5:
    pushMatrix();
    scale(1.05);
    x1=271;
    translate(-800,0);
    otto();
    popMatrix();
    otto.id = 5;
    id1 = otto.id;
    ob1 = otto.ob;
    tlk1 = otto.tlk;
    fnd1 = otto.fnd;
    otto.power();
    puntaje1(rep1);
    break;
  }
}

void player2(int num2){
  switch(num2)
  {
   
    case 6:
    pushMatrix();
    scale(1.05);
    translate(650,0);
    bindi();
    popMatrix();
    bindi.id =6;
    id2 = bindi.id;
    ob2 = bindi.ob; 
    tlk2 = bindi.tlk;
    fnd2 = bindi.fnd;
    bindi.power();
    puntaje2(rep2);
    break;
    
    case 7:
    pushMatrix();
    translate(400,0);
    scale(1.05);
    felix();
    popMatrix();
    felix.id =7;
    id2 = felix.id;
    ob2 = felix.ob; 
    tlk2 = felix.tlk;
    fnd2 = felix.fnd;
    felix.power();
    puntaje2(rep2);
    break;
    
    case 8:
    pushMatrix();
    translate(170,0);
    scale(1.05);
    baguette();
    popMatrix();
    baguette.id =8;
    id2 = baguette.id;
    ob2 = baguette.ob; 
    tlk2 = baguette.tlk;
    fnd2 = baguette.fnd;
    baguette.power();
    puntaje2(rep2);
    break;
    
    case 9:
    pushMatrix();
    scale(1.05);
    polux();
    popMatrix();
    polux.id =9;
    id2 = polux.id;
    ob2 = polux.ob; 
    tlk2 = polux.tlk;
    fnd2 = polux.fnd;
    polux.power();
    puntaje2(rep2);
    break;
    
    case 0:
    pushMatrix();
    translate(-150,0);
    scale(1.05);
    otto();
    popMatrix();
    otto.id = 10;
    id2 = otto.id;
    ob2 = otto.ob; 
    tlk2 = otto.tlk;
    fnd2 = otto.fnd;
    otto.power();
    puntaje2(rep2);
    break;
  }
}

  void power()
  {
    //println(rep1,rep2);
    boolean display = false;

    if(turno==1 && rep1>=0){
      fill(247,149,67);
      triangle(503,156,503,230,460,190);
      if (key == 'a' || key == 'A'){
      rep1 = rep1+ob1;
      display=true;
      if (display){
      fill(0);
      turno = 2;
      }
    }
    
    if (key == 's' || key == 'S'){
      rep1 = rep1+tlk1;
      display=true;
      if (display){
      fill(0);
      turno = 2;
      }
    }
    if (key == 'd' || key == 'D'){
     rep1 = rep1+fnd1;
      display=true;
      if(display){
      fill(0);
      turno = 2;
    }
   }
  }
  
  if(rep1>=40){ 
      ganador = 1;
      rep1=0;
      rep2=0;
      view=3;
      ganador(rep1,rep2);
    }
    
    if(turno==2 && rep2>=0){
      fill(181,100,191);
      triangle(730,156,730,230,770,190);
      if (key == 'j'|| key == 'J'){ 
      rep2 = rep2+ob2;
      display=true;
      if(display){
      fill(0);
      turno = 1;
     }
    }
    if (key == 'k'|| key == 'K'){ 
      rep2 = rep2+tlk2;
      display=true;
      if(display){
      fill(0);
      turno = 1;
      }
    }
    if (key == 'l'|| key == 'L'){
      rep2 = rep2+fnd2;
      display=true;
      if(display){
      fill(0);
      turno = 1;
      }
    }
  }
  if(rep2>=40)
    { 
      ganador =2;
      rep1=0;
      rep2=0;
      view=3;
      ganador(rep1,rep2);
    }
  }
}

Perrito bindi;
Perrito felix;
Perrito baguette;
Perrito polux;
Perrito otto;

void setup(){                                                                        //HERE IS THE SETUP
size(1200,600);

bindi = new Perrito(3,2,4,0,0);
felix = new Perrito(4,3,3,0,0);
baguette = new Perrito(5,1,2,0,0);
polux = new Perrito(3,2,4,0,0);
otto = new Perrito(2,5,3,0,0);

}

void draw(){
  screen();
  }

void screen(){
  int rep1;
  int rep2;
  int ob1;
  int tlk1;
  int fnd1;
  int ob2;
  int tlk2;
  int fnd2;

  switch(view){
    //pantalla principal
  case 0:
 background(255);
 pushMatrix();
 fill(56,132,222,50);
 ellipse(250,70,600,600);
 fill(0,0,0,50);
 ellipse(600,70,600,600);
 fill(222,56,61,50);
 ellipse(980,70,600,600);
 fill(245,226,54,50);
 ellipse(370,480,600,600);
 fill(77,196,10,50);
 ellipse(870,480,600,600);
 popMatrix();

  textSize(70);
  fill(0);
  textAlign(CENTER);
  text("El Perro mas Bueno",width/2,height/2);
  textSize(20);
  text("Presiona la barra espaciadora para comenzar",width/2,height/1.6);
  noStroke();
  fill(56,132,222);
  ellipse(100,80,55,55);
  ellipse(100,130,55,55);
  ellipse(350,80,55,55);
  ellipse(350,130,55,55);
  rect(100,80,250,55);
  fill(0);
  ellipse(470,80,55,55);
  ellipse(470,130,55,55);
  ellipse(720,80,55,55);
  ellipse(720,130,55,55);
  rect(470,80,250,55);
  fill(222,56,61);
  ellipse(850,80,55,55);
  ellipse(850,130,55,55);
  ellipse(1100,80,55,55);
  ellipse(1100,130,55,55);
  rect(850,80,250,55);
  fill(245,226,54);
  ellipse(250,450,55,55);
  ellipse(250,500,55,55);
  ellipse(500,450,55,55);
  ellipse(500,500,55,55);
  rect(250,450,250,55);
  fill(77,196,10);
  ellipse(700,450,55,55);
  ellipse(700,500,55,55);
  ellipse(950,450,55,55);
  ellipse(950,500,55,55);
  rect(700,450,250,55);
  
  if (keyPressed) {
    if (key == ' ') {
      view = 1;
    }
  }
  break;
  
  //elegir personajes
  case 1:
  background(175,202,255);
  fill(181,100,191);
  ellipse(0,0,100,100);
  fill(247,149,67);
  ellipse(0,600,100,100);
  fill(242,95,117);
  ellipse(1200,600,100,100);
  fill(242,220,95);
  ellipse(1200,0,100,100);
  
  
  bindi();
  felix();
  baguette();
  polux();
  otto();

  chooseChar1();
  break;

  case 2:
  background(113,202,255);
  fill(140,191,100);
  rect(0,470,1200,130);
  fill(100);
  rect(500,470,3,-300);
  rect(730,470,3,-300);

  textAlign(CENTER);
  fill(255);
  textSize(25);
  text("Realiza los siguientes trucos \n dando click en las teclas correctas:",width/2, 100);
  text(" A \t \t \t \t             Sentarse             \t \t \t \t J ",width/2, 200);
  text(" S \t \t \t \t              Ladrar             \t \t \t \t K ",width/2, 300);
  text(" D \t \t \t \t             Dar la patita             \t \t \t \t L ",width/2, 400);


  if(dog1==1)
  {
    rep1 = bindi.rep;
    bindi.player1(1);
    textSize(20);
  }
  
  if(dog1==2)
  {
    rep1 = felix.rep;
    felix.player1(2);
    
  }
  if(dog1==3)
  {
    rep1 = baguette.rep;
    baguette.player1(3);
  }
  if(dog1==4)
  {
    rep1 = polux.rep;
    polux.player1(4);
    
  }
  if(dog1==5)
  {
    rep1 = otto.rep;
    otto.player1(5);
  }
  if(dog2==6)
  {
    rep2 = bindi.rep;
    bindi.player2(6);

  }
  if(dog2==7)
  {
    rep2 = felix.rep;
    felix.player2(7);

  }
  if(dog2==8)
  {
    rep2 = baguette.rep;
    baguette.player2(8);

  }
  if(dog2==9)
  {
    rep2 = polux.rep;
    polux.player2(9);
  }
  if(dog2==0)
  {
    rep2 = otto.rep;
    otto.player2(0);
  }
  break;
  
  case 3:
    bindi.rep=0;
    felix.rep=0;
    baguette.rep=0;
    polux.rep=0;
    otto.rep=0;
    rep1=0;
    rep2=0;
  foo1=false;
  foo2=false;
  background(222,192,232);
  fill(250,215,40);
  triangle(700,200,700,60,800,200);    //crown
  triangle(800,200,900,200,900,60);
  rect(700,140,200,70);
  triangle(758,142,841,142,801,62);
 
  rep1=0;
  rep2=0;
  ganador(rep1, rep2);
  }
}

boolean foo1 = false;
boolean foo2 = false;
int dog1 = 0;
int dog2 = 0;

void chooseChar1()
//message
{
  textSize(32);
  textAlign(LEFT);
  fill(0);
  text("Escojan a sus personajes", 400, 50); 
  textSize(15);
  text("Jugador 1: Utiliza las teclas del 1 al 5 para escoger", 150, 500);
  text("Jugador 2: Utiliza las teclas del 6 al 0 para escoger", 700, 500);

 if (!foo1){ 
   textSize(35);
   fill(255);
   text("Personaje 1", 250, 570); 
 switch(key)
 {
   case '1':
   foo1 = true;
   dog1=1;
   break;
   
   case '2':
   foo1 = true;
   dog1=2;  
   break;
   
   case '3':
   foo1 = true;
   dog1=3;
   break;
   
   case '4':
   foo1 = true;
   dog1=4;
   break;
   
   case '5':
   foo1 = true;
   dog1=5;
   break;
 }
 }
  chooseChar2();
}
void chooseChar2()
//message
{
if (!foo2 && foo1){ 
  textSize(35);
  fill(255);
  text("Personaje 2", 800, 570); 
 switch(key)
 {
   case '6':
   if(dog1==1){
     textSize(20);
     fill(0);
     text("      Escoge otro \n personaje por favor",910,100);
   }
   else{
   foo2 = true;
   dog2=6;
   view =2;}
   break;
   
   case '7':
   if(dog1==2){
     textSize(20);
     fill(0);
     text("      Escoge otro \n personaje por favor",910,100);
   }
   else{
   foo2 = true;
   dog2=7;
   view =2;}
   break;
   
   case '8':
   if(dog1==3){
     textSize(20);
     fill(0);
     text("      Escoge otro \n personaje por favor",910,100);
   }
   else{
   foo2 = true;
   dog2=8;
   view =2;}
   break;
   
   case '9':
   if(dog1==4){
     textSize(20);
     fill(0);
     text("      Escoge otro \n personaje por favor",910,100);
   }
   else{
   foo2 = true;
   dog2=9;
   view =2;}
   break;
   
   case '0': 
   if(dog1==5){
     textSize(20);
     fill(0);
     text("      Escoge otro \n personaje por favor",910,100);
   }
   else{
   foo2 = true;
   dog2=0;
   view =2;}
   break;
 }
}
}

void ganador(int rep1, int rep2)
{
  rep1=0;
  rep2=0;
  
  if (ganador==1)
  {
    fill(0);
    textSize(40);
    text("Gano el jugador 1", 800, height/2);
    if(bindi.id==1){
      pushMatrix();
      scale(1.4);
      translate(30,-60);
      bindi();
      popMatrix();
      
    }
    if(felix.id==2){
      pushMatrix();
      scale(1.4);
      translate(-250,-60);
      felix();
      popMatrix();
    }
    if(baguette.id==3){
      pushMatrix();
      scale(1.4);
      translate(-500,-130);
      baguette();
      popMatrix();
    }
    if(polux.id==4){
      pushMatrix();
      scale(2);
      translate(-750,-260);
      polux();
      popMatrix();
    }
    if(otto.id==5){
      pushMatrix();
      scale(2);
      translate(-860,-300);
      otto();
      popMatrix();
    }
    fill(0);
    textSize(20);
    text("Presiona C para volver a comenzar", 800, 500); 
    if(key == 'C' || key == 'c')
    {
      reset();
    }
    
  }
  if (ganador==2)
  {
    fill(0);
    textSize(40);
    text("Gano el jugador 2", 800, height/2);
    if(bindi.id==6){
      pushMatrix();
      scale(1.4);
      translate(0,-50);
      bindi();
      popMatrix();
    }
    if(felix.id==7){
      pushMatrix();
      scale(1.4);
      translate(-300,-60);
      felix();
      popMatrix();
    }
    if(baguette.id==8){
      pushMatrix();
      scale(1.4);
      translate(-500,-100);
      baguette();
      popMatrix();
    }
    if(polux.id==9){
      pushMatrix();
      scale(2);
      translate(-700,-250);
      polux();
      popMatrix();
    }
    if(otto.id==10){
      pushMatrix();
      scale(2);
      translate(-900,-270);
      otto();
      popMatrix();
    }
    fill(0);
    textSize(20);
    text("Presiona C para volver a comenzar", 800, 500); 
    if(key == 'C' || key == 'c')
    {
      reset();
    }
  }
}

void puntaje1(int rep1)
{
    fill(0,255,0);
    rect(70, 400, 30, -(rep1*5));
    fill(0);
    text("Reputacion", 85, 195);
}

void puntaje2(int rep2)
{
    fill(0,255,0);
    rect(1080, 400, 30, -(rep2*5));
    fill(0);
    text("Reputacion", 1080, 195);
}

void existencia()
{
  if(dog1==1 && dog2==6){
     text("Escoge otro personaje por favor",600,300);
   }
  if(dog1==2 && dog2==7){
     text("Escoge otro personaje por favor",600,300);
   }
   if(dog1==3 && dog2==8){
     text("Escoge otro personaje por favor",600,300);
   }
   if(dog1==4 && dog2==9){
     text("Escoge otro personaje por favor",600,300);
   }
   if(dog1==5 && dog2==0){
     text("Escoge otro personaje por favor",600,300);
   }
}

void reset()
{
  
      bindi.rep=0;
      felix.rep=0;
      baguette.rep=0;
      polux.rep=0;
      otto.rep=0;
      bindi.id=0;
      felix.id=0;
      baguette.id=0;
      polux.id=0;
      otto.id=0;
      ganador=0;
      rep1=0;
      rep2=0;
      view =0;
}


void bindi(){
  //bindi
  strokeWeight(0.5);
  noStroke();
  fill(138,100,86);                                //brown bits
  triangle(x1-2,y1-42,x1+7,y1-107,x1-38,y1-63); //1
  triangle(x1-80,y1-63,x1-119,y1-107,x1-116,y1-42); //3
  triangle(270,167,233,145,211,196);//4
  triangle(210,194,155,166,191,145);//5
  triangle(250,220,269,167,212,194);//6
  triangle(172,220,211,194,155,164);//7
  fill(255,244,230);                               //cream bits
  triangle(233,146,211,194,191,146); //2
  triangle(211,260,172,220,211,194);//8
  triangle(211,260,211,194,250,220);//9
  triangle(252,476,250,220,211,260);//10
  triangle(163,476,211,260,172,220);//11
  triangle(211,260,228,353,191,353);//12
  triangle(252,302,251,321,316,300);
  rect(171,221,79,72);
  fill(0);                                          //eyes and nose
  triangle(222,224,200,224,211,236);
  ellipse(231,192,5,10);
  ellipse(190,192,5,10);
  
  fill(216,168,109);
  triangle(170,238,211,273,167,345);                  //best/vest bits
  triangle(252,238,211,273,252,346);
  triangle(166,345,207,277,191,355);
  triangle(252,346,214,275,229,355);
  triangle(191,355,184,273,220,273);
  triangle(188,355,229,355,218,278);
  stroke(147,116,77);                                //pockets and belt
  strokeWeight(1.5);
  line(211,273,211,353);
  rect(182,283,15,15);
  rect(224,283,15,15);
  stroke(0);
  line(169,320,248,320);
  noStroke();
  fill(234,86,12);
  triangle(233,307,216,329,228,333);
  triangle(216,329,229,331,233,349);
  //fill(255,173,64);                                  //choose box
  //rect(132,508,150,120);
}

void felix(){
  noStroke();
  fill(247,211,157);                        //light bits
  triangle(519,151,522,72,487,126);
  triangle(431,70,434,148,460,120);
  triangle(536,168,489,120,453,154);
  triangle(415,167,460,120,473,147);
  triangle(473,206,518,148,434,148);
  triangle(502,215,518,148,473,206);
  triangle(437,147,447,215,473,206);
  triangle(474,234,474,200,447,215);
  triangle(474,234,474,200,502,215);
  triangle(514,164,525,194,500,186);
  triangle(425,192,439,156,445,188);
  triangle(508,190,518,219,497,215);
  triangle(445,187,432,216,453,212);
  triangle(501,215,515,295,445,248);
  triangle(447,212,429,295,494,255);
  triangle(501,476,515,295,473,259);
  triangle(429,295,436,470,476,216);
  triangle(441,346,499,346,472,239);
  fill(124,78,9);                        //brown bits
  ellipse(463,151,10,4);
  ellipse(485,151,10,4);
  triangle(489,120,473,147,460,120);
  triangle(514,318,589,344,512,342);
  stroke(124,78,9);                      //jaw
  strokeWeight(1);
  line(448,163,475,210);
  line(475,210,504,164);
  fill(0);                              //eyes and nose
  triangle(469,200,482,200,475,210);
  ellipse(467,167,3,7);
  ellipse(483,167,3,7);
  
  noStroke();                            //tie
  fill(222,85,85);
  triangle(474,241,483,282,474,314);
  triangle(474,314,474,232,465,283);
  fill(193,53,53);
  triangle(465,232,483,232,473,249);  
  
  fill(0);                                //suspenders
  triangle(457,347,435,269,441,242);
  triangle(484,349,506,242,510,269);
  fill(250,246,232);                      //socks
  triangle(432,399,449,399,436,471);
  triangle(490,399,508,399,501,480);
  strokeWeight(2);
  stroke(0);
  line(433,405,445,405);
  line(433,412,444,412);
  line(492,406,506,406);
  line(493,413,505,413);                                 //choose box
  noStroke();

}

void baguette(){
  noStroke();
  fill(242,237,223);                    //tail
  ellipse(667,369,18,18);
  ellipse(662,380,18,18);
  ellipse(671,386,18,18);
  
  fill(252,249,240);                    //ze paws
  triangle(724,292,728,476,701,349);
  triangle(675,294,701,349,671,476);
  triangle(676,298,701,349,726,296);
  triangle(686,393,701,349,719,393);
  
  fill(242,237,223);                   //ear poofs
  ellipse(736,256,40,40);
  ellipse(745,282,40,40);
  ellipse(716,288,40,40);
  ellipse(673,255,40,40);
  ellipse(664,279,40,40);
  ellipse(688,287,40,40);  
  
  fill(252,249,240);
  ellipse(705,227,80,60);              //head poof
  triangle(735,240,674,240,703,308);   //trompa
  
  fill(250,103,196);                    //bows
  triangle(745,226,756,232,744,239);
  triangle(744,239,733,248,746,253);
  triangle(664,227,655,237,667,239);
  triangle(667,239,677,244,668,253);
  triangle(683,445,683,455,674,450);
  triangle(674,450,665,445,665,455);
  triangle(716,445,725,450,716,455);
  triangle(734,445,725,450,734,455);
  fill(245,82,82);                      //scarf
  rect(674,315,51,8);
  fill(222,85,85);
  triangle(705,321,710,332,703,334);
  triangle(708,344,710,331,703,333);
  triangle(700,322,699,333,692,331);
  triangle(692,341,699,332,692,330);
  
  fill(0);                                   //eyes and nose
  triangle(703,308,697,296,709,296);
  stroke(0);
  ellipse(695,264,5,10);
  ellipse(711,264,5,10);
  noStroke();
  fill(252,249,240);
  ellipse(695,262,5,11);
  ellipse(711,262,5,11);
  //fill(214,130,200);                                  //choose box
  //rect(615,508,150,120);
}

void polux(){
  fill(255,244,230);                       //paws
  ellipse(862,464,17,17);
  ellipse(903,464,17,17);
  fill(252,249,240);                       //shirt
  rect(853,421,60,40);
  fill(191,228,255);
 // rect(872,455,23,11);
  fill(27,25,103);
  rect(855,435,60,3);                      //stripesss
  rect(855,442,60,3);
  rect(855,449,60,3);
  
  fill(255,244,230);                       //head circle
  ellipse(884,380,60,60);              
  triangle(857,395,911,395,884,433);
  fill(138,100,86);                      //ears
  triangle(885,386,873,354,865,408);
  triangle(854,377,874,354,866,408);
  triangle(885,386,897,354,903,408);
  triangle(913,377,896,354,902,408);
  triangle(855,377,835,403,867,407);
  triangle(877,425,835,403,867,406);
  triangle(853,447,877,424,835,403);
  triangle(912,375,901,407,931,405);
  triangle(892,425,901,406,931,404);
  triangle(892,424,931,404,915,446);
  triangle(831,449,854,450,854,455);      //tail
  
  fill(245,82,82);                        //hat bit
  ellipse(898,352,30,30);
  ellipse(859,364,25,24);
  triangle(887,344,859,354,901,365);
  triangle(867,373,905,365,864,355);
  triangle(876,350,878,339,869,342);
  
  fill(0);                              //eyes and nose
  triangle(876,422,893,422,884,433);
  ellipse(878,388,3,7);
  ellipse(893,388,3,7);
 // fill(252,223,102);                                  //choose box
 // rect(805,508,150,120);
}

void otto(){
  fill(247,202,132);                      //bun
  ellipse(1015,453,20,35);
  ellipse(1070,453,20,35);
  
  fill(165,79,13);
  rect(1019,428,48,38);                    //body
  ellipse(1027,468,15,15);                //paws
  ellipse(1059,468,15,15);
  triangle(1089,455,1080,453,1080,458);   //tail
  
  fill(165,79,13);                       //head circle and triangle
  ellipse(1045,416,45,45);   
  triangle(1027,431,1062,431,1045,452);
  
  fill(149,67,3);                        //ears
  triangle(1032,400,1005,406,1028,435);
  triangle(1004,433,1005,405,1028,432);
  triangle(1018,454,1004,432,1028,432);
  triangle(996,421,1005,432,1005,406);
  triangle(1086,409,1061,404,1093,425);
  triangle(1060,437,1093,424,1061,403);
  triangle(1070,455,1060,437,1093,423);
  
  fill(0);                              //eyes and nose
  stroke(0);
  strokeWeight(1);
  triangle(1045,447,1039,439,1051,439);
  ellipse(1041,423,2,5);
  ellipse(1050,423,2,5);
  line(1045,447,1029,427);
  line(1045,447,1059,430);
  noStroke();                          //ickle hat
  fill(82,35,6);
  ellipse(1046,400,50,17);
  triangle(1059,376,1059,400,1040,400);
  triangle(1033,400,1033,376,1053,400);
  fill(35,134,52);                                //feather
  triangle(1059,393,1065,382,1069,386);
  triangle(1065,382,1069,386,1075,376);
 // fill(104,128,198);                                  //choose box
 // rect(978,508,150,120);
}