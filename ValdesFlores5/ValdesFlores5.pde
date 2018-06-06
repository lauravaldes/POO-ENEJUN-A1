int pantalla = 0;
PImage escenario;
float equis = mouseX;
float ye = mouseY;
//boolean hokay;
//boolean who;
//boolean why;
//boolean bear;
//boolean cave;
//boolean what;
//boolean sun;
//int jelp;

class jugador {
 boolean hokay;
 boolean who;
 boolean why;
 boolean bear;
 boolean cave;
 boolean what;
 boolean sun;
 int jelp;
 //PImage escenario;
 
 jugador(int jelp_, boolean hokay_,boolean who_, boolean why_, boolean bear_, boolean cave_, boolean what_, boolean sun_){
 jelp = jelp_;
 hokay = hokay_;
 who = who_;
 why = why_;
 bear = bear_;
 cave = cave_;
 what = what_;
 sun = sun_;
 }

}

jugador tumero;

void setup(){
   size(775,775);
   tumero = new jugador(0, true, true, true, true,true,true,true);
}

void draw(){
  screen();
  println(mouseX, mouseY);
}

void screen(){
 //pantalla principal
 
 switch(pantalla){

 
 case 0:
 escenario = loadImage("chooseplayer.png");
 image(escenario,0,0,775,775);
 if(mouseX>76 && mouseY>698 && mouseX<332 && mouseY<761){
    if(mousePressed==true){
     // yey.stop();
      pantalla=2;
      tumero.why= true;
    }
  }
  if(mouseX>455 && mouseY>696 && mouseX<707 && mouseY<761){
    if(mousePressed==true){
     // yey.stop();
      pantalla=2;
      tumero.why=false;
    }
  }
 break;
 
 case 2:
 escenario = loadImage("arma.png");
 image(escenario,0,0,775,775);
 if(mouseX>85 && mouseY>636 && mouseX<332 && mouseY<746){
    if(mousePressed==true){
     // yey.stop();
      pantalla=3;
      tumero.who=true;
    }
  }
  
  if(mouseX>440 && mouseY>635 && mouseX<685 && mouseY<744){
    if(mousePressed==true){
     // yey.stop();
      pantalla=3;
      tumero.who=false;
    }
  }
 
 break;


 
 case 3:
 escenario = loadImage("bearhere.png");
 image(escenario,0,0,775,775);
 if(mouseX>85 && mouseY>636 && mouseX<332 && mouseY<746){ 
    if(mousePressed==true){
     // yey.stop();
     //hokay=true;
      pantalla=4;
     // hokay=true;
      tumero.bear=true;
    }
  }
   if(mouseX>440 && mouseY>635 && mouseX<685 && mouseY<744){
    if(mousePressed==true){
     // yey.stop();
      pantalla=4;
     // hokay=false;
      tumero.bear=false;
    }
  }
 
 break;
 
 case 4:
 if(tumero.why==true){
   if(tumero.bear==false){
   escenario = loadImage("cartografo.png");
   image(escenario,0,0,775,775);
   if(mouseX>259 && mouseY>685 && mouseX<507 && mouseY<747){
    if(mousePressed==true){
     // yey.stop();
      pantalla=0;
    }
  }
   
 }
 if(tumero.bear==true && tumero.who==true){
   escenario = loadImage("bearscare.png");
   image(escenario,0,0,775,775);
   if(mouseX>261 && mouseY>687 && mouseX<508 && mouseY<747){
    if(mousePressed==true){
     // yey.stop();
     pantalla=5;
    }
  }
 }
 if(tumero.bear==true && tumero.who==false){
   escenario = loadImage("osopalillofin.png");
   image(escenario,0,0,775,775);
   if(mouseX>265 && mouseY>685 && mouseX<515 && mouseY<743){
    if(mousePressed==true){
     // yey.stop();
     pantalla=0;
    }
  }
 }
 }
 
 if(tumero.why==false){
   if(tumero.bear==false){
   escenario = loadImage("osotuerto.png");
   image(escenario,0,0,775,775);
   if(mouseX>397 && mouseY>270 && mouseX<642 && mouseY<331){
    if(mousePressed==true){
     // yey.stop();
      pantalla=5;
    }
  }
   
 }
 if(tumero.bear==true && tumero.who==false){
   escenario = loadImage("cavebear.png");
   image(escenario,0,0,775,775);
   if(mouseX>501 && mouseY>401 && mouseX<749 && mouseY<463){
    if(mousePressed==true){
     // yey.stop();
     pantalla=5;
    }
  }
 }
   if(tumero.bear==true && tumero.who==true){
   escenario = loadImage("ramamuerte.png");
   image(escenario,0,0,775,775);
   if(mouseX>267 && mouseY>678 && mouseX<514 && mouseY<744){
    if(mousePressed==true){
     // yey.stop();
     pantalla=0;
    }
  }
 }
 }
 
 break;
 
 case 5:
 if(tumero.why==true){
   escenario = loadImage("cuevaschoose.png");
   image(escenario,0,0,775,775);
   
   if(mouseX>130 && mouseY>697 && mouseX<298 && mouseY<757){ 
    if(mousePressed==true){
     // yey.stop();
      pantalla=6;
      tumero.cave=false;
    }
  }
   if(mouseX>462 && mouseY>690 && mouseX<631 && mouseY<751){
    if(mousePressed==true){
     // yey.stop();
      pantalla=6;
      tumero.cave=true;
    }
  }
   
 }
 
  if(tumero.why==false){
   escenario = loadImage("puente.png");
   image(escenario,0,0,775,775);
   
   if(mouseX>76 && mouseY>695 && mouseX<254 && mouseY<757){ 
    if(mousePressed==true){
     // yey.stop();
      pantalla=6;
      tumero.cave=true;
      tumero.jelp=1;
    }
  }
   if(mouseX>286 && mouseY>696 && mouseX<464 && mouseY<755){
    if(mousePressed==true){
     // yey.stop();
      pantalla=6;
      tumero.cave=true;
      tumero.jelp=2;
    }
  }
    if(mouseX>495 && mouseY>695 && mouseX<675 && mouseY<761){
    if(mousePressed==true){
     // yey.stop();
      pantalla=6;
      tumero.cave=false;
      tumero.jelp=3;
    }
  }
 }
 break;
 
 case 6:
 if(tumero.cave==false && tumero.why==true){
   escenario = loadImage("finlangostas.png");
   image(escenario,0,0,775,775);
   if(mouseX>280 && mouseY>685 && mouseX<495 && mouseY<748){
    if(mousePressed==true){
     // yey.stop();
      pantalla=0;
 }
   }
 }
 
 if(tumero.cave==true && tumero.why==true){
   escenario = loadImage("cuevacama.png");
   image(escenario,0,0,775,775);
   if(mouseX>279 && mouseY>667 && mouseX<490 && mouseY<728){
    if(mousePressed==true){
     // yey.stop();
      pantalla=7;
    }
  }
 }
 
  if(tumero.cave==true && tumero.why==false && tumero.jelp==1){
   escenario = loadImage("ancestroscont.png");
   image(escenario,0,0,775,775);
   if(mouseX>269 && mouseY>685 && mouseX<481 && mouseY<748){
    if(mousePressed==true){
     // yey.stop();
      pantalla=7;
 }
   }
 }
 
 if(tumero.cave==true && tumero.why==false && tumero.jelp==2){
   escenario = loadImage("estiloybalance.png");
   image(escenario,0,0,775,775);
   if(mouseX>279 && mouseY>667 && mouseX<490 && mouseY<728){
    if(mousePressed==true){
     // yey.stop();
      pantalla=7;
    }
  }
 }
 
  if(tumero.cave==false && tumero.why==false && tumero.jelp==3){
   escenario = loadImage("fallbridgeend.png");
   image(escenario,0,0,775,775);
   if(mouseX>279 && mouseY>667 && mouseX<490 && mouseY<728){
    if(mousePressed==true){
     // yey.stop();
      pantalla=0;
    }
  }
 }
 
 break;
 case 7:
 if(tumero.why==true){
   escenario = loadImage("nubesol.png");
   image(escenario,0,0,775,775);
   if(mouseX>97 && mouseY>645 && mouseX<342 && mouseY<741){
    if(mousePressed==true){
      tumero.what=false;
      pantalla=8;
    }
   }
    if(mouseX>433 && mouseY>645 && mouseX<677 && mouseY<737){
    if(mousePressed==true){
      tumero.what=true;
      pantalla=8;
    }
  }
 }
 
 if(tumero.why==false){
   escenario = loadImage("bothhorse.png");
   image(escenario,0,0,775,775);
   if(mouseX>90 && mouseY>643 && mouseX<337 && mouseY<733){
    if(mousePressed==true){
      tumero.what=false;
      pantalla=8;
    }
   }
    if(mouseX>425 && mouseY>640 && mouseX<670 && mouseY<734){
    if(mousePressed==true){
      tumero.what=true;
      pantalla=8;
    }
  }
 }
 break;
 
 case 8:
 if(tumero.what==false && tumero.why==true){
   escenario = loadImage("nubemalvadaend.png");
   image(escenario,0,0,775,775);
   if(mouseX>265 && mouseY>686 && mouseX<478 && mouseY<748){
    if(mousePressed==true){
      pantalla=0;
    }
   }
 }
 
 if(tumero.what==true && tumero.why==true){
   escenario = loadImage("palancachoose.png");
   image(escenario,0,0,775,775);
   if(mouseX>88 && mouseY>627 && mouseX<333 && mouseY<712){
    if(mousePressed==true){
      tumero.sun=true;
      pantalla=9;
    }
   }
   
   if(mouseX>440 && mouseY>623 && mouseX<685 && mouseY<717){
    if(mousePressed==true){
      tumero.sun=false;
      pantalla=9;
    }
   }
 }
 
 if(tumero.what==false && tumero.why==false){
   escenario = loadImage("horsehate.png");
   image(escenario,0,0,775,775);
   if(mouseX>485 && mouseY>686 && mouseX<695 && mouseY<748){
    if(mousePressed==true){
      pantalla=0;
    }
   }
 }
 
 if(tumero.what==true && tumero.why==false){
   escenario = loadImage("manzanahoria.png");
   image(escenario,0,0,775,775);
   if(mouseX>98 && mouseY>649 && mouseX<345 && mouseY<710){
    if(mousePressed==true){
      tumero.sun=true;
      pantalla=9;
    }
   }
   
   if(mouseX>434 && mouseY>649 && mouseX<680 && mouseY<710){
    if(mousePressed==true){
      tumero.sun=false;
      pantalla=9;
    }
   }
 }
 break;
 
 case 9:
 if(tumero.sun==true && tumero.why==true){
   escenario = loadImage("sungoddess.png");
   image(escenario,0,0,775,775);
   if(mouseX>535 && mouseY>685 && mouseX<747 && mouseY<745){
    if(mousePressed==true){
      pantalla=0;
    }
   }
 }
 if(tumero.sun==false && tumero.why==true){
   escenario = loadImage("firesword.png");
   image(escenario,0,0,775,775);
   if(mouseX>541 && mouseY>685 && mouseX<753 && mouseY<747){
    if(mousePressed==true){
      pantalla=0;
    }
   }
 }
 
 if(tumero.sun==true && tumero.why==false){
   escenario = loadImage("caballofinman.png");
   image(escenario,0,0,775,775);
   if(mouseX>35 && mouseY>687 && mouseX<247 && mouseY<751){
    if(mousePressed==true){
      pantalla=0;
    }
   }
 }
 if(tumero.sun==false && tumero.why==false){
   escenario = loadImage("horseendzan.png");
   image(escenario,0,0,775,775);
   if(mouseX>34 && mouseY>690 && mouseX<242 && mouseY<751){
    if(mousePressed==true){
      pantalla=0;
    }
   }
 }
 
 break;
 
 }
 
}