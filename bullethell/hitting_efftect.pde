class EnemyEffect extends GameObject {

  //constructor
  EnemyEffect(float x, float y, float vx, float vy, color c) {
    super(x, y, random(vx+5), random(vy+5), 1, c, 10);
  }

  void act() {

    super.act();
  
    }
  

  void show() {
    super.show();
  }
}
