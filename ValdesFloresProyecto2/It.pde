class It {

  // We need to keep track of a Body and a radius
  Body body;
  float r;
  //float x;
  // color col; 
 
 PImage one;


  It(float x, float y, float r_) {
    r = r_;
    // This function puts the particle in the Box2d world
    makeBody(x, y, r);
    body.setUserData(this);
  }

  // This function removes the particle from the box2d world
  void killBody() {
    box2d.destroyBody(body);
    
  }

  // Is the particle ready for deletion?
  boolean done() {
    // Let's find the screen position of the particle
    Vec2 pos = box2d.getBodyPixelCoord(body);
    // Is it off the bottom of the screen?
    if (pos.x > 900) {
      pos.x = -10;
     // return true;
    }
    return false;
  }
  
  
  
   void attract(float x,float y) {
    // From BoxWrap2D example
    Vec2 worldTarget = box2d.coordPixelsToWorld(x,y);   
    Vec2 bodyVec = body.getWorldCenter();
    // First find the vector going from this body to the specified point
    worldTarget.subLocal(bodyVec);
    // Then, scale the vector to the specified force
    worldTarget.normalize();
    worldTarget.mulLocal((float) 100);
    // Now apply it to the body's center of mass.
    body.applyForce(worldTarget, bodyVec);
  }

  // 
  void display() {
    
    if(count==6 || count==7 || count==8 || count==9 || count==10){
      one = loadImage("full.png");
    }else{
    one = loadImage("one.png");}
    // We look at each body and get its screen position
    Vec2 pos = box2d.getBodyPixelCoord(body);
    posx = pos.x;
    // Get its angle of rotation
    
    if(posx> 949){
      posx = -20;
      count = count+1;
      vel = -0.5;
      it2 = new It(posx,340,60);
      it2.ohdear(5,0,1);
    }
    if(count == 12){
      posx = -20;
      vel = -0.5;
      it2 = new It(posx,340,60);
      it2.ohdear(0,0,1);
    }
    
    
   // if(count == 13 || count == 14){
   //   posx = -20;
   //   vel = -0.5;
   //   it2 = new It(posx,340,60);
   //   it2.ohdear(5,0,1);
   // }
    
    if(posx == -20 && page == 2){
      page = 3;
      song = true;
    }
    
    
    println(posx , a );
    
    a = body.getAngle();
    pushMatrix();
    translate(pos.x, pos.y);
    rotate(-a);
    imageMode(CENTER);
    scale(0.5);
    image(one,0,0);
    stroke(0);
    strokeWeight(3);
    popMatrix();
   
  }

  // Here's our function that adds the particle to the Box2D world
  void makeBody(float x, float y, float r) {
    // Define a body
    BodyDef bd = new BodyDef();
    // Set its position
    bd.position = box2d.coordPixelsToWorld(x, y);
      
    bd.type = BodyType.DYNAMIC;
    
    body = box2d.createBody(bd);

    // Make the body's shape a circle
    CircleShape cs = new CircleShape();
    cs.m_radius = box2d.scalarPixelsToWorld(r);

    FixtureDef fd = new FixtureDef();
    fd.shape = cs;
    // Parameters that affect physics
    fd.density = 0.5;
    fd.friction = 0.4;
    fd.restitution = 0.5;

    // Attach fixture to body
    body.createFixture(fd);
    
    body.setAngularVelocity(vel);
  
    
    
  }
  
    void ohdear(int ohdear,int ohdear2, int count){
    if(count>0){
    body.setLinearVelocity(new Vec2(ohdear,ohdear2));
    }
    }
 
}