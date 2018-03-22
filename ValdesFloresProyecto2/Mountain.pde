// The Nature of Code
// <http://www.shiffman.net/teaching/nature>
// Spring 2010
// Box2DProcessing example

// An uneven surface boundary

class Mountain {
  // We'll keep track of all of the surface points
  Body body;
  ArrayList<Vec2> mountain;
  

  Mountain() {
    mountain = new ArrayList<Vec2>();

    // This is what box2d uses to put the surface in its world
    ChainShape chain = new ChainShape();

    // Perlin noise argument
    float xoff = 0.0;
    
    // This has to go backwards so that the objects  bounce off the top of the surface
    // This "edgechain" will only work in one direction!
    for (float x = width+10; x > -10; x -= 5) {
     
      float y;
         
        y = a + map(noise(xoff),0,1,-0.2,0.2);
        a+=3;
      // Store the vertex in screen coordinates
      mountain.add(new Vec2(x,y));

      // Move through perlin noise
      xoff += 0.1;

    }
    
    // Build an array of vertices in Box2D coordinates
    // from the ArrayList we made
    
    Vec2[] vertices = new Vec2[mountain.size()];
    for (int i = 0; i < vertices.length; i++) {
      Vec2 edge = box2d.coordPixelsToWorld(mountain.get(i));
      vertices[i] = edge;
    }
    
    // Create the chain!
    
    chain.createChain(vertices,vertices.length);

    // The edge chain is now attached to a body via a fixture
    BodyDef bd = new BodyDef();
    bd.position.set(0.0f,0.0f);
    Body body = box2d.createBody(bd);
    // Shortcut, we could define a fixture if we
    // want to specify frictions, restitution, etc.
    body.createFixture(chain,1);

  }
    void killBody(){
    box2d.destroyBody(body);
   }


  // Is the particle ready for deletion?
  //boolean done() {
    // Let's find the screen position of the particle
   // Vec2 pos = box2d.getBodyPixelCoord(body);
    // Is it off the bottom of the screen?
   // if (count==5 || count==6) {
   //   killBody();
   //   return true;
   // }
   // return false;
  //}
  
  

  // A simple function to just draw the edge chain as a series of vertex points
  void display() {
    strokeWeight(2);
    stroke(0);
    noFill();
    beginShape();
    for (Vec2 v: mountain) {
      vertex(v.x,v.y);
    }
    endShape();
  }

}