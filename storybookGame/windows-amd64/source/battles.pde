class battles{
  //initializing variables and lists
  int size;
  int turn = 0;
  int dead;
  int health;
  int enemy;
  ArrayList<characters> characterList = new ArrayList<>();
  ArrayList<PImage> characterImages = new ArrayList<>();
  ArrayList<characters> enemyList = new ArrayList<>();
  ArrayList<Integer> enemyHealth = new ArrayList<>();
  public void bDraw(){
    //fill in lists
    characterList.add(Gret);
    characterList.add(Blam);
    characterList.add(Bart);
    characterList.add(Boq);
    characterImages.add(gretImg);
    characterImages.add(blamImg);
    characterImages.add(bartImg);
    characterImages.add(boqImg);
    enemyList.add(Wolf);
    enemyList.add(Cheese);
    enemyList.add(HotDog);
    enemyList.add(Ghost);
    enemyList.add(King);
    enemyHealth.add(10);
    enemyHealth.add(10);
    enemyHealth.add(10);
    enemyHealth.add(20);
    enemyHealth.add(30);
    //set up battle screen
    background(battleBackground);
    image(enemyList.get(enemy).getImage(), 187, 220);
    fill(196, 196, 196);
    rect(140, 190, 200, 20, 50);
    fill(240, 108, 98);
    circle(130, 400, 100);
    fill(132, 158, 250);
    circle(330, 400, 100);
    fill(217, 37, 24);
    fill(0);
    textSize(27);
    text("Kick", 305, 407);
    text("Punch", 94, 408);
    //enemy health bar
    for (int i = 10; i >= 0; i--){
      if(enemyList.get(enemy).getHealth() == 0){
        fill(196, 196, 196);
        rect(140, 190, 200, 20, 50);
      }
      else if(enemyList.get(enemy).getHealth() == 10){
        fill(217, 37, 24);
        rect(140, 490, 200, 20, 50);
      }  
      else if((enemyList.get(enemy).getHealth() == i) && i != 0){
        size = 200 - (abs(i-10) * 20);
        fill(217, 37, 24);
        rect(140, 190, size, 20, 50);
      }
    }
    //enemy name
    fill(255);
    textSize(20);
    text(enemyList.get(enemy).getName(), 213, 207);    
    fill(196, 196, 196);
    rect(140, 490, 200, 20, 50);
    //character health bar
    for (int i = 10; i >= 0; i--){
      if(characterList.get(turn).getHealth() == 0){
        fill(196, 196, 196);
        rect(140, 490, 200, 20, 50);
      }
      else if(characterList.get(turn).getHealth() == 10){
        fill(217, 37, 24);
        rect(140, 490, 200, 20, 50);
      }      
      else if((characterList.get(turn).getHealth() == i) && i != 0){
        size = 200 - (abs(i-10) * 20);
        fill(217, 37, 24);
        rect(140, 490, size, 20, 50);
      }
    }

    //character name
    fill(255);
    textSize(20);
    text((characterList.get(turn)).getName(), 213, 507);
    //kick and punch options
    if(kick){
      characterList.get(turn).setHealth((characterList.get(turn)).getHealth() - enemyList.get(enemy).getPower());
      turn++;
      enemyList.get(enemy).setHealth(enemyList.get(enemy).getHealth() - 2);
      kick = false;
    }
    if(punch){
      characterList.get(turn).setHealth((characterList.get(turn)).getHealth() - enemyList.get(enemy).getPower());
      turn++;
      enemyList.get(enemy).setHealth(enemyList.get(enemy).getHealth() - 1);
      punch = false;
    }
    //end battle if enemy is killed, reset all health of characters, reset turn and increment round
    if(enemyList.get(enemy).getHealth() <= 0){
      System.out.println("Enemy health is zero. Ending battle.");
      Bart.setHealth(10);
   Boq.setHealth(10);
   Gret.setHealth(10);
   Blam.setHealth(10);
   Cheese.setHealth(10);
   King.setHealth(10);
   Wolf.setHealth(10);
   Ghost.setHealth(10);
   HotDog.setHealth(10);
      turn = 0;
      background(castleImg);
      battleT = false;
      round++;
    }
    //cycle through characters, if one is dead skip over it
    if((characterList.get(turn)).getHealth() > 0){
      image(characterImages.get(turn), 187, 520);
    }
    else
    {
      dead++;
      turn++;
    }
    //if all characters die, reset all health and show lose screen
    if(dead >= 4){
      Bart.setHealth(10);
   Boq.setHealth(10);
   Gret.setHealth(10);
   Blam.setHealth(10);
   Cheese.setHealth(10);
   King.setHealth(10);
   Wolf.setHealth(10);
   Ghost.setHealth(10);
   HotDog.setHealth(10);
     lose = true;
     battleT = false;
     background(castleImg);
    }
  }
  //enemy setter
  public void setEnemy(int e){
    enemy = e;
  }
}
