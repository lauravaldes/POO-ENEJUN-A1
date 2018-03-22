class Lluvia  {

  ArrayList<Gota> gotas;    // An ArrayList for all the particles
  PVector origin;         // An origin point for where particles are birthed

  Lluvia(int num, PVector v) {
    gotas = new ArrayList<Gota>();             // Initialize the ArrayList
    origin = v.get();                        // Store the origin point

      for (int i = 0; i < num; i++) {
      gotas.add(new Gota(origin.x,origin.y));    // Add "num" amount of particles to the ArrayList
    }
  }

  void run() {
    // Display all the particles
    for (Gota p: gotas) {
      p.display();
    }

    // Particles that leave the screen, we delete them
    // (note they have to be deleted from both the box2d world and our list
    for (int i = gotas.size()-1; i >= 0; i--) {
      Gota p = gotas.get(i);
      if (p.done()) {
        gotas.remove(i);
      }
    }
  }

  void addGotas(int n) {
    for (int i = 0; i < n; i++) {
      gotas.add(new Gota(origin.x,origin.y));
    }
  }

  // A method to test if the particle system still has particles
  boolean dead() {
    if (gotas.isEmpty()) {
      return true;
    } 
    else {
      return false;
    }
  }

}