class Starfighter extends GameObject {
  //final int PW1=1;
  //final int PW2=2;
  //final int PW3=3;
  //final int PW4=4;



  int cooldown, threshold;
  //int shootmode=PW1;
  //int Mytimer;

  Starfighter() {
    super(width/2, width/2, 0, 0, 40, #FF0000, 10);
    threshold=10;
    cooldown=threshold;
    //Mytimer=0;
  }

  void act() {
    super.act();

    //managing guns
    cooldown++;
    if (space && cooldown>=threshold) {
      objects.add(new Bullet());
      cooldown=0;
    }

    //controlling the starfighter
    if (up)vy=-4;
    if (down)vy=4;
    if (left)vx=-4;
    if (right)vx=4;
    if (!up&&!down)vy=vy*0.9;
    if (!left&&!right) vx=vx*0.9;


    //enemy 1 collision
    int i=0;
    while (i<objects.size()) {
      GameObject obj=objects.get(i);
      if (obj instanceof EnemyBullet && collidingWith(obj)) {
        player1.lives--;
      }
      i++;
    }

    //enemey 2 colli
    int n=0;
    while (n<objects.size()) {
      GameObject obj=objects.get(n);
      if (obj instanceof Enemy2) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives=0;
        }
      }
      n++ ;
    }

    //enemy3 colli
    int r=0;
    while (r<objects.size()) {
      GameObject obj=objects.get(r);
      if (obj instanceof Enemy3) {
        if (collidingWith(obj)) {
          lives--;
          obj.lives=0;
        }
      }
      r++ ;
    }
  }
}
//  //power up
//  int q=0;
//  while (1<objects.size()) {
//    GameObject obj=objects.get(q);
//    if (obj instanceof Powerup) {
//      if (collidingWith(obj)) {
//        if (shootmode==PW1) {
//          shootmode=PW2;
//        } else if (shootmode==PW3) {
//          shootmode=PW4;
//        }
//        obj.lives = 0;
//      }
//    }
//    q++ ;
//  }
//}

//void show() {
//  if (shootmode==PW1)        sasa();
//  else if (shootmode==PW2)    kuku();
//  else if (shootmode==PW3)    cici();
//  else if (shootmode==PW4)    lala();
//}
////Regular power
//void sasa() {
//  cooldown++;
//  if (space&& cooldown>=threshold) {
//    objects.add(new ExtraBullet(player1.x, player1.y));
//    cooldown=0;
//  }
//}

////more power
//void kuku() {
//  cooldown++;
//  if (space&& cooldown>=threshold) {

//    ExtraBullet bl = new ExtraBullet(player1.x-10, player1.y);
//    ExtraBullet br = new ExtraBullet(player1.x+10, player1.y);

//    objects.add(bl);
//    objects.add(br);
//    cooldown=0;
//    Mytimer++;
//    if (Mytimer==10) {
//      shootmode=PW1;
//      Mytimer=0;
//    }
//  }
//}
////more lives
//void cici() {
//  cooldown++;
//  if (space&&cooldown>=threshold) {

//    ExtraBullet bl = new ExtraBullet(player1.x-10, player1.y);
//    ExtraBullet br = new ExtraBullet(player1.x+10, player1.y);
//    ExtraBullet bm= new ExtraBullet(player1.x, player1.y);
//    objects.add(bl);
//    objects.add(br);
//    objects.add(bm);
//    cooldown=0;
//  }
//}

//void lala() {
//  cooldown++;
//  threshold=5;
//  if (space&& cooldown>=threshold) {
//    ExtraBullet bl = new ExtraBullet(player1.x-10, player1.y);
//    ExtraBullet br = new ExtraBullet(player1.x+10, player1.y);
//    ExtraBullet bm = new ExtraBullet(player1.x, player1.y);
//    objects.add(bl);
//    objects.add(br);
//    objects.add(bm);
//    cooldown=0;
//    if (Mytimer==10) {
//      shootmode=PW3;
//      Mytimer=0;
//    }
//  }
//}
