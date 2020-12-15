
//Global Variables
int buttonX, buttonY, buttonWidth, buttonHeight;
color buttonColour, yellow, purple, resetWhite=#FFFFFF;

void setup() {
  size(400, 300);
  //Population
  buttonX = width*1/4;
  buttonY = height*1/4;
  buttonWidth = width*1/2;
  buttonHeight = height*1/2;
  yellow = #F3FC03;
  purple = #FC03FC;
}//End setup

void draw() {
  //background(resetWhite);
  //println(mouseX, mouseY);
  if (mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight) { //Button Hoverover
    buttonColour = yellow; //Hoverover
  } else {
    buttonColour = purple;
  }// End IF
  fill(buttonColour); //Purple all the time, Yellow with Hoverover
  rect(buttonX, buttonY, buttonWidth, buttonHeight);
  fill(resetWhite);
}//End draw

void keyPressed() {
  //Quit Keyboard Button
  if (key == 'q' || key == 'Q') { 
    exit();
  }//End IF
}//End keypressed

void mousePressed() {
  if ( mouseX>buttonX && mouseX<buttonX+buttonWidth && mouseY>buttonY && mouseY<buttonY+buttonHeight ) {
    exit();
  }//End IF, using mouseX & mouseY
}//End mousePressed
