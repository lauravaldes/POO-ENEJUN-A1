import shiffman.box2d.*;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.joints.*;
import org.jbox2d.collision.shapes.*;
import org.jbox2d.collision.shapes.Shape;
import org.jbox2d.common.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.*;
import org.jbox2d.dynamics.contacts.*;



Box2DProcessing box2d;

ArrayList<Lluvia> lluvia;

Surface surface;
Mountain mountain;

It it;
It it2;



int page=1;
int ohdear = 0;
int ohdear2 = 0;
boolean draw=false;
boolean song=false;
float x;
float vel = -0.1;
float a;
float posx;
int count=0;
int pebble=0;


void setup() {
  PImage title;
  PImage shel;
  PImage piece;

  size(800,500);
  
  box2d = new Box2DProcessing(this);
  box2d.createWorld();
  box2d.setGravity(0, -20);
  lluvia = new ArrayList<Lluvia>();

  surface = new Surface();
  it = new It(60,340,60);
  
}

void draw() {

  box2d.step();

  background(255);
  
  switch(page){
    
  case 1:{
    //println(x);
    PImage title;
    PImage shel;
    
    
    title = loadImage("title.jpg");
    shel = loadImage("shel1.png");
    
    pushMatrix();
    surface.display();
    imageMode(CENTER);
    scale(0.5);
    image(title,800,280);
    popMatrix();
    
    pushMatrix();
    scale(0.6);
    image(shel,650,550);
    popMatrix();
    
    
    fill(0);
    text("Press the spacebar", 335, 455);

    if (keyPressed) {
      if(key == ' ' && page==1){
        
        page = 2;
      }
    }
    
  break;
    }
  
  case 2:{
    surface.display();
    draw = true;
    if (draw == true){
        it.display();
        pushMatrix();
        rectMode(CENTER);
        fill(255);
        noStroke();
        rect(400,150,400,240);
        popMatrix();
      }
      fill(0);
      text("It was missing a piece. \n And it was not happy.", 70, 130);
      text("Press 'd' ", 360, 455);
            
      if(key == 'd' || key == 'D' && page==2){
       text("So it set off in search \n of its missing piece.", 300, 130);
       it.attract(800,400);
      } 
    
      
      if(posx > 400){
      text("And as it rolled \n it sang this song-", 500, 130);
      text("Oh I'm lookin' for my missin' piece \n I'm lookin' for my missin' piece \n Hi-dee-ho, here I go,\n Lookin' for my missin' piece", 510, 170);
      
      }
      break;
    }
    
   case 3:{
     
     if (song){
     
     surface.display();
     it2.display();
     it2.attract(800,400);
     }
     
     if(count==1){
       page = 4;
     }
     break;
   }
   
   case 4:{
     println(count, page); 
     surface.display();
     if(count==1){
     it2.display();
      it2.ohdear(5,0,1);
     text("Sometimes it baked in the sun", 70, 130);
     
     
     if(posx > 300){
       text("but then the cool rain would come down.", 400, 130);
       text("Press 'p', \n then click where you would like it to rain \n when finished press 'n'", 315, 455);
       if(key=='p'||key=='P' && page==4){

         for (Lluvia system: lluvia) {
          system.run();
          int n = (1);
          system.addGotas(n);
          }
         it2.ohdear(0,0,1);
         
         if(mousePressed){
         pushMatrix();
         lluvia.add(new Lluvia(0, new PVector(mouseX,mouseY)));
         popMatrix();
         }
       }
         
       }
        if(key == 'n' || key == 'N' && page==4){
         count = 2;
     }
     
     
    }
    if(count == 2){
        surface.display();
        text("And on it went", 300, 130);
        it2.display();
        it2.attract(800,400);
        it2.ohdear(10,0,1);
     } 
     if(count == 3){
       it2.display();
        it2.attract(800,400);
        it2.ohdear(10,0,1);
         PImage piece;
     piece = loadImage("mssg copy.jpg");
     pushMatrix();
     scale(0.8);
     image(piece,650,455);
     popMatrix();
     
     text("Press the space bar to stop \n then press 'a' to continue", 360, 458);
     if(key==' ' && page==4){
       text("And then one day it came upon \n a piece that seemed \n to be just right", 210, 170);
       it2.ohdear(0,0,1);
     }
     if(key=='a' || key=='A' && count ==3){
       count = 4;
     }
     }
     if(count == 4){
       it2.display();
       it2.ohdear(0,0,1);
        PImage piece;
       piece = loadImage("mssg copy.jpg");
       pushMatrix();
       scale(0.8);
       image(piece,650,455);
       popMatrix();
       text(" Hi, it said\n Hi, said the piece.\n Are you anybody else's missing piece?\n Not that I know of.\n Well, maybe you want to be your own piece?\n I can be someone's and still be my own\n Well, maybe you don't want to be mine.\n Maybe I do.\n Maybe we won't fit...\n Well...", 100, 170);

       text("Press 'm' to continue", 360, 458);
       
       if(key=='m' || key=='M' && page==4){
       count=5;
       }
       }
       if(count == 5){
         
         text(" It fit!\n It fit perfectly!\n At last! At last!", 300, 250);
         PImage complete;
        complete = loadImage("full.png");
        pushMatrix();
        scale(0.5);
        image(complete,650,690);
        popMatrix();
         text("Press 's' to continue", 360, 458);
         if(key=='s' || key=='S' && page==4){
         count=6;
       }
       }
       if(count == 6){
        it2.display();
        it2.ohdear(30,0,1);
    }
    
    if(count==7){
      it2.display();
      it2.ohdear(35,0,1);
      text(" And away it rolled\n and because it was\n now complete,\n it rolled faster\n and faster.", 70, 130);
    }
    if(count==8){
      it2.display();
      it2.ohdear(35,0,1);
      text("And it began to sing-\n   I've frown my nizzin' geez\n   Uf vroun my mitzin' brees\n   So krease ny meas\n   An bleez ny drees\n   Uf frown...", 240, 130);
    }  
    if(count==9){
      it2.display();
      it2.ohdear(35,0,1);
      text("And it began to sing-\n   I've frown my nizzin' geez\n   Uf vroun my mitzin' brees\n   So krease ny meas\n   An bleez ny drees\n   Uf frown...", 240, 130);
    } 
    
    if(count==10){
      it2.display();
      it2.ohdear(35,0,1);
      text(" Oh my, now that\n it was complete\n it could not sing at all.", 450, 130);
    } 
    
    if(count==11){
      text(" So it stopped rolling...", 300, 230);
      text("Press the space bar to continue\n then 'p'", 300, 458);
         if(key==' ' && count==11){
         text(" and it set the piece down gently,", 300, 250);
         }
       
       if(key=='p' || key=='P' && count==11){
         count=12;
         
       }
         
    }
    
    if(count==12){
      text(" and slowly rolled away", 200, 130);
      text(" And as it rolled it softly sang-", 470, 130);
      text("Press 'o' to continue", 300, 458);
         if(key=='o'||key=='O' & count==12){
         count=13;
         }
       }
    
    if(count==13 || count==14){
      it2.display();
      it2.ohdear(10,0,1);
      text("Oh I'm lookin' for my missin' piece \n I'm lookin' for my missin' piece \n Hi-dee-ho, here I go,\n Lookin' for my missin' piece", 300, 170);
    }
    
    if(count==15){
      page=5;
    }
   }
   
   case 5:{
     if(count==15){
        PImage end;
        end = loadImage("end.png");
        pushMatrix();
        scale(0.5);
        image(end,550,400);
        popMatrix();
        text("Thank you for going through this adventure \n\n a project based on 'The Missing Piece' \n\t\t\t\t\t\t\t\t\t\t by Shel Silverstein", 430, 200);
        
     }
     }

    break;
  }
  
}
  
  

  

  
 
 