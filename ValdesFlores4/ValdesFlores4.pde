import gab.opencv.*;
import processing.video.*;
import java.awt.*;

Capture video;
OpenCV opencv;
Movie secret;
//Movie clue;
PImage document;
PImage warning;

void setup() {
  size(800, 800);
  secret = new Movie(this, "thesecret.mov");
 // clue = new Movie(this, "STOP.mov");
  video = new Capture(this, 800/2, 800/2);
  opencv = new OpenCV(this, 800/2, 800/2);
  document = loadImage("document.png");
  warning = loadImage("clue.png");
  
  opencv.loadCascade(OpenCV.CASCADE_EYE);  
  //secret.play();
  video.start();
}

void draw() {
  //scale(2);
  opencv.loadImage(video);
  image(document,0,0);
  document.resize(800,800);
  
  image(secret,200,210,500,500);

  Rectangle[] eye = opencv.detect();

  for ( int i = 0; i < eye.length; i++) {
    println(eye[i].x + "," + eye[i].y);
    println("EYE DETECTED");
    
    secret.stop();
    
    image(warning, 60,60);
    warning.resize(630,630);

  }
    
 //   clue.stop();
    secret.play();
}

void captureEvent(Capture c) {
  c.read();
}

void movieEvent(Movie m) {
  m.read();
}