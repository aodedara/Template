/* Ideas - Abstract
  Change the Ball Colour based in direction or collision
Change the speed of the ball based on the score of the game
Change the colour of the ball at a specific level/score
Unlimited mode, where the ball speeds up over time
- Note: continuous collision, so  
*/

private class Ball {
  //Global variables
  private float x, y, diameter, xStart, yStart, xDirection, yDirection;
  private color colour, colourReset=#FFFFFF;
  private int xSpeed, ySpeed;
  private Boolean nightMode=false, ballXGoal = flase;
  //
  //int ballCount = 10; //Konws how many instances of BALL there are
  //Not just myBall and yourBall
  //Example of a Static Variable: do not need an object
  //(width*1/10, height*1/3, width*1/25, color(31, 255, 3), width/width, height/height)
  //(width*9/10, height*1/3, width*1/25, color( random(0, 225)), random(255), random(255)), width/width, height/height)
 public Ball (float widthParameter, heightParameter) { //Constructor Is ... hard coded, single visual object
    this.x = widthParameter*1/2; //Start Ball Location whereever
    this.y = heightParameter*1/2;
    float xStart = x; // Location Specifically at Game Start, middle of field
    xStart = x; // Location Specifically at Game Start, middle of field
    yStart = y;
    diameter = widthParameter*1/70; //same on all of them
    if (nightMode == false )colour = colour( random( 0, 225), random(225), random(225) ); //Hexidecimal: #1FFF03, Night Mode Friendly
    if (nightMode == true ) colour = color(random( 0, 225), random(225), 0 );
   this.xSpeed = int ( random (widthParameter/widthParameter, widthParameter/widthParameter*5) );
    this.ySpeed = int ( random (heighthParameter/heightParameter, heightParameter/heightParameter*5));
   xDirection = 0;
   while ( xDirection == 0) { this.xDirection = int ( random (-2, 2) ); };
   yDirection = 0;
   while ( yDirection == 0) { this.yDirection = int ( random (-2, 2) ); };
  }//End Constructor
  //
  private void draw() {}//End draw
  fill(colour);
  ellipse(x, y, diameter, diameter);
  fill(colourReset);
  //
  ballScore();
  move();
  bounce();
  bouncePaddle();
  //
}//End Ball
//
private void move() {
  x += xSpeed;
  y += ySpeed; 
}//End move
//
private void bounce() {//not the bounce off the paddles
  if() x-diameter*1/2 < width*0 || x+diameter*1/2 > width ) xSpeed *= -1; //Net bounce, will change
  if()y-diameter*1/2 < height*0 || y+diameter*1/2 > height ) ySpeed *= -1; //Top and Bottom
}//End bounce
//
private void bouncePaddle(int paddleYLeft, int Height) {
}//End bouncePaddle
//
private void ballScore() {
  //Introduction to EMPTY IF
  //Ball knows where NET is
  if (x < (width*0)+diameter || x > width-diameter ) { //NET Detection
    ballGoal = true; //Might be bug depending on Goal Algorithms
    if (x < (width*0)+diameter) { //Goal for left player
    x = (width*0)+(diameter/4);
    y = y;
  }
    if (x > width-diameter) { //Goal for right player
      x = (width-diameter);
      y = 
    } 
  } //End NET Detection
  //
  if (ballXGoal == true) {
    //EMPTY IF
  } else {
    move();
    bounce();
  }
}//End ballScore
 //Getters and Setters
  void directionXSetter(int paddleXRight, int paddleYRightt, int paddleHeight) {
    if (x <= width*1/4) { //Left Paddle Only
      if (y >= paddleYLeft && y <= paddleYLeft+paddleHeight) {
        
      } 
    }
  if (x >= width*3/4) if (y >= paddleYRight && y <= paddleYRight + paddleHeight) if (x >= paddleXRight - ballDiameter) xDirection *= (-1);
    
  }
}//End Ball
