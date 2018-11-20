interface Doggo{
 // int ob;
 // int tlk;
 // int fnd;
  int rep();
  int id();
  void turno();
  int attack(int x, int y);
  

  //PImage can();
  void puntaje(int x, int y);
  void display(int x, int y);
  void ganador();
 // void getout();
  void reset();
}

class Breed implements Doggo{
  int id;
  int rep;
  int ob;
  int tlk;
  int fnd;
  PImage can;
  
  Breed(int id_, int rep_, int ob_, int tlk_, int fnd_){
    id = id_;
    rep = rep_;
    ob = ob_;
    tlk = tlk_;
    fnd = fnd_;
  }
  
  void turno(){
    if (id==1 && turn){
      textSize(32);
      text("Agnes", 300, 564);
    }
    
    if (id==2 && turn){
      textSize(32);
      text("Felix", 300, 564);
    }
    
    if (id==3 && turn){
      textSize(32);
      text("Baguette", 300, 564);
    }
    
    if (id==4 && turn){
      textSize(32);
      text("Polux", 300, 564);
    }
    
    if (id==5 && turn){
      textSize(32);
      text("Otto", 300, 564);
    }
    
    if (id==1 && !turn){
      textSize(32);
      text("Agnes", 300, 564);
    }
    
    if (id==2 && !turn){
      textSize(32);
      text("Felix", 300, 564);
    }
    
    if (id==3 && !turn){
      textSize(32);
      text("Baguette", 300, 564);
    }
    
    if (id==4 && !turn){
      textSize(32);
      text("Polux", 300, 564);
    }
    
    if (id==5 && !turn){
      textSize(32);
      text("Otto", 300, 564);
    }
  }
  
  void reset(){
    id=0;
    rep=0;
    ob=0;
    tlk=0;
    fnd=0;
  }
  
  void ganador(){
    if(rep>=45){
      if(id==1){
        can = loadImage("bor.png");
        can.resize(240, 260);
        image(can,250,160);
        
      }
      
      if(id==2){
        can = loadImage("ger.png");
        can.resize(240, 250);
        image(can,250,170);
        
      }
      
      if(id==3){
        can = loadImage("pood.png");
        can.resize(260, 260);
        image(can,250,170);
       
      }
      
      if(id==4){
        can = loadImage("mac.png");
        can.resize(240, 200);
        image(can,250,175);
        
      }
      
      if(id==5){
        can = loadImage("bass.png");
        can.resize(240, 210);
        image(can,250,175);
        
      }
    }
  }
 
  
  void puntaje(int x, int y)
{   
    noStroke();
    fill(0,255,0);
    rect(x, y, 30, -(rep*5));
}
  
  int attack(int x, int y){
       
      if(id==1){
        ob=4;
        tlk=4;
        fnd=3;
      }
      
      if(id==2){
        ob=5;
        tlk=1;
        fnd=2;
      }
      
      if(id==3){
        ob=3;
        tlk=2;
        fnd=2;
      }
      
      if(id==4){
        ob=3;
        tlk=2;
        fnd=4;
      }
      
      if(id==5){
        ob=2;
        tlk=5;
        fnd=3;
      }
    
    if(mneh==0){
     if(rep>=45){
       view++;
     }
     
     if (mouseX>50 && mouseY>615 && mouseX<176 && mouseY<678){
       if(mousePressed){
       rep = rep + ob;
       bonk=1;
       fight++;
     }
    }
    
    if (mouseX>286 && mouseY>615 && mouseX<414 && mouseY<678){
      if(mousePressed){
      rep = rep + fnd;
      bonk=2;
      fight++;
      }
    }
    
    if (mouseX>524 && mouseY>615 && mouseX<656 && mouseY<678){
      if(mousePressed){
        //reproducir bork
      rep = rep + tlk;
      bonk=0;
      woof.play();
      fight++;
      }
    }
    
    }
    
    if(mneh==1){
      if(rep>=45){
       view++;
     }
     
     if (mouseX>50 && mouseY>615 && mouseX<176 && mouseY<678){
       if(mousePressed){
       rep = rep + ob;
       bonk=1;
       fight++;
       }
    }
    
    if (mouseX>286 && mouseY>615 && mouseX<414 && mouseY<678){
      if(mousePressed){
      rep = rep + fnd;
      bonk=2;
      fight++;
      }
    }
    
    if (mouseX>524 && mouseY>615 && mouseX<656 && mouseY<678){
      if(mousePressed){
        //reproducir bork
      rep = rep + tlk;
      bonk=0;
      woof.play();
      fight++;
      }
    }
    }
    
    return rep;
  }
  
  
  int rep(){
    
   // fill(0,255,0);
   // rect(70, 400, 30, -(rep1*5));
    return rep;
  }
  
  int id(){
    
  if (view==1 && mouseX>57 && mouseY>26 && mouseX<245 && mouseY<196)
  {
   if(mousePressed == true){
     id=1;
    println(id);
    turn = true;
    count++;
   }
 }
 
 if (view==1 && mouseX>48 && mouseY>232 && mouseX<238 && mouseY<416)
  {
   if(mousePressed == true){
     id=2;
    println(id);
    turn = true;
    count++;
   }
 }
 
 if (view==1 && mouseX>291 && mouseY>116 && mouseX<440 && mouseY<277)
  {
   if(mousePressed == true){
     id=3;
    println(id);
    turn = true;
    count++;
   }
 }
 
 if (view==1 && mouseX>278 && mouseY>379 && mouseX<462 && mouseY<552)
  {
   if(mousePressed == true){
     id=4;
    println(id);
    turn = true;
    count++;
   }
 }
 
 if (view==1 && mouseX>46 && mouseY>491 && mouseX<245 && mouseY<668)
  {
   if(mousePressed == true){
     id=5;
    println(id);
    turn = true;
    count++;
   }
 }
  
  println(count);
  return id;
  }
  
  
  void display(int x, int y){
    if (id==1 && turn && bonk==0){
      can = loadImage("bor.png");
      can.resize(180, 180);
      image(can,x,y);
    }
    if (id==2 && turn && bonk==0){
      can = loadImage("ger.png");
      can.resize(210, 210);
      image(can,x,y);
    }
    if (id==3 && turn && bonk==0){
      can = loadImage("pood.png");
      can.resize(180, 180);
      image(can,x,y);
    }
    if (id==4 && turn && bonk==0){
      can = loadImage("mac.png");
      can.resize(160, 100);
      image(can,x,y);
    }
    if (id==5 && turn && bonk==0){
      can = loadImage("bass.png");
      can.resize(180, 110);
      image(can,x,y);
    }
    
    if (id==1 && !turn && bonk==0){
      can = loadImage("bor2.png");
      can.resize(180, 180);
      image(can,x,y);
    }
    if (id==2 && !turn && bonk==0){
      can = loadImage("ger2.png");
      can.resize(210, 210);
      image(can,x,y);
    }
    if (id==3 && !turn && bonk==0){
      can = loadImage("pood2.png");
      can.resize(180, 180);
      image(can,x,y);
    }
    if (id==4 && !turn && bonk==0){
      can = loadImage("mac2.png");
      can.resize(160, 100);
      image(can,x,y);
    }
    if (id==5 && !turn && bonk==0){
      can = loadImage("bass2.png");
      can.resize(180, 110);
      image(can,x,y);
    }
    
    if(id==1 && bonk==1 && turn){
         can = loadImage("sit1.png");
         can.resize(180, 180);
         image(can,x,y);
      }
      if(id==2 && bonk==1 && turn){
        can = loadImage("sit3.png");
        can.resize(210, 210);
        image(can,x,y);
      }
      if(id==3 && bonk==1 && turn){
        can = loadImage("sit5.png");
        can.resize(170, 210);
        image(can,x,y);
      }
      if(id==4 && bonk==1 && turn){
        can = loadImage("sit7.png");
        can.resize(160, 110);
        image(can,x,y);
      }
      if(id==5 && bonk==1 && turn){
        can = loadImage("sit9.png");
        can.resize(180, 110);
        image(can,x,y);
      }
      
      if(id==1 && bonk==2 && turn){
         can = loadImage("play3.png");
         can.resize(180, 200);
         image(can,x,y);
      }
      if(id==2 && bonk==2 && turn){
        can = loadImage("play1.png");
        can.resize(250, 180);
        image(can,x,y);
        turn=false;
      }
      if(id==3 && bonk==2 && turn){
        can = loadImage("play5.png");
        can.resize(180, 180);
        image(can,x,y);
      }
      if(id==4 && bonk==2 && turn){
        can = loadImage("play7.png");
        can.resize(170, 100);
        image(can,x,y);
      }
      if(id==5 && bonk==2 && turn){
        can = loadImage("play9.png");
        can.resize(180, 110);
        image(can,x,y);
      }
    
    
    if(id==1 && bonk==1 && !turn){
         can = loadImage("sit2.png");
         can.resize(180, 180);
         image(can,x,y);
      }
      if(id==2 && bonk==1 && !turn){
        can = loadImage("sit4.png");
        can.resize(210, 210);
        image(can,x,y);
      }
      if(id==3 && bonk==1 && !turn){
        can = loadImage("sit6.png");
        can.resize(170, 210);
        image(can,x,y);
      }
      if(id==4 && bonk==1 && !turn){
        can = loadImage("sit8.png");
        can.resize(160, 110);
        image(can,x,y);
      }
      if(id==5 && bonk==1 && !turn){
        can = loadImage("sit10.png");
        can.resize(180, 110);
        image(can,x,y);
      }
    
     if(id==1 && bonk==2 && !turn){
         can = loadImage("play4.png");
         can.resize(180, 200);
         image(can,x,y);
      }
      if(id==2 && bonk==2 && !turn){
        can = loadImage("play2.png");
        can.resize(250, 180);
        image(can,x,y);
      }
      if(id==3 && bonk==2 && !turn){
        can = loadImage("play6.png");
        can.resize(180, 180);
        image(can,x,y);
      }
      if(id==4 && bonk==2 && !turn){
        can = loadImage("play8.png");
        can.resize(170, 100);
        image(can,x,y);
      }
      if(id==5 && bonk==2 && !turn){
        can = loadImage("play10.png");
        can.resize(180, 110);
        image(can,x,y);
      }
  
  }
}