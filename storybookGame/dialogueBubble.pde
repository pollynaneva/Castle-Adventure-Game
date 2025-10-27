class dialogueBubble{
  public String text;
  public String name = null;
  //dialogue constructors, what is in the text bubble
  public dialogueBubble(String t, String n){
    text = t;
    name = n;
  }
  public dialogueBubble(String t){
    text = t;
  }
  //draws the dialogue bubble
  public void dDraw(){
    fill(255);
    rect(30, 580, 390, 100, 30);
      rect(25, 550, 100, 50, 30);
      textFont(font, 36);
    fill(0);
    text(name, 39, 585);
    textFont(font, 20);
    text(text, 45, 630);
    fill(196, 196, 196);
    textFont(font, 15);
    text("Click to continue.", 175, 673);
  }
  //text setter
  public void setText(String t, String n){
    text = t;
    name = n;
  }
 
}
  
