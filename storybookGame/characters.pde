class characters{
  //charateristics (didn't get to implementing all of them, i was too ambitious)
  String name;
  int health;
  int healthInit;
  int power;
  int healthPower;
  int magicPower;
  PImage image;
  //character constructor
  public characters(String n, int h, PImage i, int p){
    name = n;
    health = h;
    image = i;
    power = p;
    healthInit = h;
  }
  //simple character constructor
  public characters(String n, int h, PImage i){
    name = n;
    health = h;
    image = i;
  }
  //getters and setters for health, name, image, power, and initial health
  public int getHealth(){  
    return health;
  }
   public int getHealthInit(){  
    return healthInit;
  }
  public void setHealth(int h){
    health = h;
  }
  public String getName(){  
    return name;
  }
  public PImage getImage(){
    return image;
  }
  public int getPower(){
    return power;
  }
}
  
