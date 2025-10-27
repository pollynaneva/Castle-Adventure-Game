//initialize variables
PImage castleImg;
PFont font;
public battles battle = new battles();
public int round = 0;
public boolean battleT = false;
public PImage battleBackground;
public PImage cheeseImg;
public PImage kingImg;
public PImage wolfImg;
public PImage ghostImg;
public PImage hotDogImg;
public PImage boqImg;
public PImage gretImg;
public PImage blamImg;
public PImage bartImg;
public boolean kick = false;
public boolean punch = false;
public boolean lose = false;
public boolean win = false;
public boolean leftDoor;
public characters Bart;
public characters Boq;
public characters Gret;
public characters Blam;
public characters Cheese;
public characters Ghost;
public characters King;
public characters Wolf;
public characters HotDog;
public characters turn;
public dialogueBubble dialogue = new dialogueBubble("Is that the castle?", "Boq");
public dialogueBubble system = new dialogueBubble("Wolf");





//all dialogue in order
String[] allDialogue = {
  "Is that the castle?",
  "Yeah Boq, come on. Are you blind?",
  "Stop being so mean to him!",
  "It looks like there’s a gate across the bridge.",
  "Let’s head towards it.",
  "OMG a dog!",
  "Boq runs towards the large wolf blocking the \n path.",
  "BOQ NO COME BACK!",
  "They all chase after him.",
  "Battle begins.",
  "Bart and Boq are huddled together, shaken \n up from the battle.",
  "Gret notices a key that was attached to the \n wolf’s collar.",
  "This must be the key to the gate!",
  "Get up Bart and Boq. You’re such children.",
  "We need to keep moving.",
  "They go through the gate and end up at the \n castle gallery.",
  "There are three doors in front of them.", 
  "Blam charges ahead and tries to open the big \n door labeled throne room.",
  "It is locked.",
  "Boq peeks through the left door.",
  "There are two small monsters behind this \n door.",
  "There’s a key at the end.",
  "Bart peeks through the right door.",
  "There’s one really big monster behind this \n one.",
  "There’s also a key at the end.",
  "Let’s really consider our options here.",
  "Do we want to go through the right, shorter \n and harder door or the left, longer and \n easier door?",
  "Let’s stay safe and take the easier route!",
  "Fight begins",
  "Thank god we beat that guy.",
  "I never like fighting food, it makes me \n hungry.",
  "Slow pan onto a hot dog shaped man.",
  "Fight begins",
  "Let’s do the harder one, we’re not scared!",
  "Fight begins",
  "YIPPEE!",
  "Gret grabs the key.",
  "I’m so glad that’s over.",
  "I wonder what the key leads to.",
  "Obviously it’s for the big door.",
  "Loser.",
  "Relax Blam.",
  "Let’s go back to the throne room door.",
  "They walk back to the gallery.",
  "Boq skips along.",
  "Are you guys ready to face the King?",
  "Boq whimpers in fear.",
  "Come on Boq, grow up we have to do this!",
  "Boq starts to cry.",
  "Blam! You made him cry!",
  "Apologize right now!",
  "Whatever.",
  "Blam takes the key from Gret and suddenly \n opens the throne room door.",
  "The doors swing open dramatically.",
  "The King slowly turns around in his large, \n swiveling desk throne.",
  "Well well well. I’ve been expecting you.",
  "We’re gonna kill you!",
  "You destroyed everything!",
  "Look at Boq!",
  "He’s crying because of you!",
  "Gret and Bart glare at Blam while comforting \n Boq.",
  "Gret gets up and walks forward.",
  "My name is Gret . You killed my father, \n prepare to die.",
  "Boq pulls out a knife that he just like had on \n him for some reason.",
  "Boq....",
  "You...",
  "Where’d you get that knife?",
  "Battle Begins",
  "We finally did it!",
  "Gret runs into Blams arms and they start \n passionately start making out.",
  "Eugh...",
  "Bart picks up Boq and starts spinning him \n around in a circle.",
  "They all live happily ever after.",
  "The end.",
  "You win!!!"
  


};
//who says all above dialogue
String[] nameOrder = {
  "Boq",
  "Blam",
  "Gret",
  "Bart",
  "Bart",
  "Boq",
  " ",
  "Bart",
  " ",
  " ",
  " ",
  " ",
  "Gret",
  "Blam",
  "Blam", 
  " ",
  " ",
  " ",
  " ",
  " ",
  "Boq",
  "Boq",
  " ",
  "Bart",
  "Bart",
  "Gret",
  "Gret",
  "Gret",
  " ",
  "Bart",
  "Bart",
  " ",
  " ",
  "Blam",
  " ",
  "Boq",
  " ",
  "Gret",
  "Bart",
  "Blam",
  "Blam",
  "Gret",
  "Gret",
  " ",
  " ",
  "Bart",
  " ",
  "Blam",
  " ",
  "Bart",
  "Gret",
  "Blam",
  " ",
  " ",
  " ",
  "King",
  "Blam",
  "Blam",
  "Blam",
  "Blam",
  " ",
  " ",
  "Gret",
  " ",
  "Bart",
  "Bart",
  "Bart",
  " ", 
  "Bart",
  " ",
  "Boq",
  " ",
  " ",
  " ",
  " "
};
void setup() {
  //load images, resize and initialize characters
  size(451, 707);
  castleImg = loadImage("castlebackground.jpg");
  battleBackground = loadImage("battleBackground.png");
  cheeseImg = loadImage("cheese.png");
  boqImg = loadImage("boq.png");
  blamImg = loadImage("blam.png");
  gretImg = loadImage("gret.png");
  bartImg = loadImage("bart.png");
  wolfImg = loadImage("wolf.png");
  ghostImg = loadImage("ghost.png");
  kingImg = loadImage("king.png");
  hotDogImg = loadImage("hotDog.png");
  gretImg.resize(100, 0);
  blamImg.resize(100, 0);
  bartImg.resize(100, 0);
  boqImg.resize(100, 0);
  hotDogImg.resize(100, 0);
  wolfImg.resize(100, 0);
  kingImg.resize(150, 0);
  Bart = new characters("Bart", 10, bartImg);
  Boq = new characters("Boq", 10, boqImg);
  Gret = new characters("Gret", 10, gretImg);
  Blam = new characters("Blam", 10, blamImg);
  Cheese = new characters("Cheese", 10, cheeseImg, 3);
  Ghost = new characters("Ghost", 20, ghostImg, 4);
  King = new characters("King", 10, kingImg, 5);
  Wolf = new characters("Wolf", 10, wolfImg, 3);
  HotDog = new characters("Hot Dog", 10, hotDogImg, 2);
  background(castleImg);
  font = loadFont("GoudyOldStyle.vlw");
  //start the dialogue
  dialogue.dDraw();
  //title
      fill(0);
    textSize(50);
    text("Castle Adventure", 70, 100);

}
void draw() {
  //lose screen
  if(lose){
    background(0);
    text("You lose", 100, 100);
  }
  else{
    //clear title after first round
   if (round == 1){
    background(castleImg);
   }
   //clear screen intermitently 
  if(round == 27 || round == 35 || round == 29){
    background(castleImg);
  }
   //dialogue and battle scenes
  dialogue.dDraw();
  if (battleT){
   
    battle.bDraw();
  }
  //cycle through all dialogue depending on round number
  dialogue.setText(allDialogue[round], nameOrder[round]);
  //battle
  if(round == 9){
    battle.setEnemy(0);
    battleT = true;
  }
  //reset health after each battle
  if(!battleT){
   Bart.setHealth(10);
   Boq.setHealth(10);
   Gret.setHealth(10);
   Blam.setHealth(10);
   Cheese.setHealth(10);
   King.setHealth(10);
   Wolf.setHealth(10);
   Ghost.setHealth(20);
   HotDog.setHealth(10);
  }
  //choosing path
  if(round == 26){
    fill(181, 163, 139);
    rect(100, 250, 100, 200, 10);
    rect(250, 250, 100, 200, 10);
    fill(245, 220, 108);
    circle(180, 360, 20);
    circle(330, 360, 20);
  }
  //battles
  if(round == 28){
    battle.setEnemy(1);
    battleT = true;
  }
  if(round == 32){
    battle.setEnemy(2);
    battleT = true;
  }
  if(round == 34){
    round = 37;
    battle.setEnemy(3);
    battleT = true;
    
  }
  if(round == 67){
    battle.setEnemy(4);
    battleT = true;
  }
  //skip rounds that correspond with right door if user chose left door
  if(leftDoor && round == 33){
    round+=2;
  }
  }
}
//if mouse is over rectangle
boolean overRect(int x, int y, int width, int height) {
  if (mouseX >= x && mouseX <= x+width && mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
//if mouse is over circle
boolean overCirc(int x, int y, int diameter) {
  float radius = diameter / 2.0;
  float distX = mouseX - x;
  float distY = mouseY - y;
  return ((distX * distX + distY * distY) <= (radius * radius));
}
//logic for clicking on dilaogue buttons, door choices and battle choices
void mousePressed() {
  if ((overRect(30, 580, 390, 100)) && !battleT && round != 26 && round != 33) {
    round++;
  }
  else if ((overRect(100, 250, 100, 200)) && !battleT && round == 26) {
    leftDoor = true;
    background(castleImg);
    round = 27;
  }
  else if ((overRect(250, 250, 100, 200)) && !battleT && round == 26) {
    leftDoor = false;
    background(castleImg);
    round = 33;
  }
  else if ((overRect(30, 580, 390, 100)) && !battleT && !leftDoor && round == 33) {
    round++;
  }
  else if ((overCirc(130, 400, 100))) {
    punch = true;
  }
  else if ((overCirc(330, 400, 100))) {
    kick = true;

  }
}
