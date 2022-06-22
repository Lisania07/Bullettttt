class Bullet extends GameObject {

  //constructor
  Bullet() {
    super(player1.x, player1.y, 0, -10, 8, #FF0000, 1);
  }

  void act() {
    super.act();
    
  }

  void show() {
    super.show();

 int i=0;
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (collidingWith(obj)) {
        if (obj instanceof Enemy) {
          objects.add(new EnemyEffect(x, y, 0, 5, c));
          objects.add(new EnemyEffect(x, y, 5, 0, c));
          objects.add(new EnemyEffect(x, y, 0, -5, c));
          objects.add(new EnemyEffect(x, y, -5, 10, c));
          objects.add(new EnemyEffect(x, y, 0, 10, c));
          objects.add(new EnemyEffect(x, y, 10, 0, c));
          objects.add(new EnemyEffect(x, y, 0, -10, c));
          objects.add(new EnemyEffect(x, y, -10, 10, c));
          objects.add(new EnemyEffect(x, y, -10, -10, c));
          objects.add(new EnemyEffect(x, y, -5, 5, c));
          objects.add(new EnemyEffect(x, y, -10, -5, c));
          objects.add(new EnemyEffect(x, y, -5, 10, c));
        }
      }
      i++;
    }
  }
}
