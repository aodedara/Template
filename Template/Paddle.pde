/* Ideas
  Paddle as a Pin-Ball-Lookalike in the middle of the table
[Advanced Option] 360 degress full rotation for the 
[Advanced Option] Curved Paddle, deflects and different angles
  */


private class Paddle {
  //Global Variables
  private color colour=#000000, white=#FFFFFF;
  private int paddleXLeft, paddleXRight, paddleYLeft, paddleYRight, paddleWidth, paddleHeight, paddleSpeed, yMove;
  private int yMove; //Possible Easteregg to move paddles differently requires two vars
  private Boolean upLeft = false, downLeft = false, stopLeft = false, upRight = false, downRight = false, stopRight = false;
  private int leftScore = 0, rightScore = 0;
  private float leftBoardX, leftBoardY, boardSide, rightBoardX, rightBoardY;
  private String left, right;
  private float textSize;
  private boolean upLeft , downLeft, stopLeft, upRight, downRight, stopRight;
  //
  public Paddle (float widthParameter, float heightParameter) { //General Population
    this.colour = color (int(random(100, 255)), int(random(50, 255)), int(random(175, 255)) );
    paddleWidth = int(widthParameter*1/80); //no "this" thus no change ever
    paddleXLeft = int(widthParameter*1/40);
    paddleXRight = int(widthParameter*39/40) - paddleWidth;
    paddleHeight = int(heightParameter*4/5);
    this.paddleYLeft = int(heightParameter*1/2) - paddleHeight*1/2;
    this.paddleYRight = paddleYLeft;0
    this.upLeft = false;
    this.downLeft = false;
    this.stopLeft;
    this.upRight = false;
    this.downRight = false;
    this.stopRight = false;
    int paddleSpeed = 5; //Previously a User initiated value
    this.yMove = int( (heightParameter / heightParameter) * paddleSpeed);
    boardSide = heightParameter*1/10;
    leftBoardX = paddleXLeft;
    leftBoardY = heightParameter*0;
    rightBoardX = paddleXRight - boardSide;
    rightBoardY = leftBoardY;
    textSize = width*1/15;
    //Variables to move the paddle
    this.upLeft = false;
    this.downLeft = false;
    this.stopLeft = false;
    this.upRight = false;
    this.downRight = false;
    this.stopRight = false;
    //Variables for paddle speed
    paddleSpeed = 5; //Previously a USER Initiated Value, constant without THIS
    yMove = int 
(heightParameter / heightParameter) * paddleSpeed;
  }//End Constructor
  //
  void move() { //Notice Sequence: arithmetic , check, draw
    //Movement//paddyYLeft++;//paddleYRight++;
    if (upLeft == true && downLeft == false) {
      paddleYLeft -= yMove;
      stopLeft = false;
    }
    //Needs to stop at the top and bottom, else off the screen
    if (paddleYLeft <= height * 0) paddleYLeft = 0;
    if (PaddleYLeft >= height+paddleHeight) paddleYLeft = height;
     if (paddleYRight <= height * 0) paddleYRight = 0;
    if (paddleYRight >= height-paddleHeight) paddleYRight = height-paddleHeight;
  
  }//End move
  //
  public void upLeftGetter() { //Get keyboard input
   upLeft = true;
  }
  //
  void draw() {
    leftPaddle();
    rightPaddle();
    fill(colour);
    gamePlay(); //Arithmatic Code, Security Feature
    rect (paddleXLeft, paddleYLeft, paddleWidth, paddleHeight);
    rect (paddleXRight, paddleYRight, paddleWidth, paddleHeight);
    fill(0); //Reset fill
  }//End draw
  //
  void gamePlay() {
    if (upLeft == true && downLeft == false) {
      paddleYRight += yMove;
      stopLeft = false;
    }
    if (upLeft == false && downLeft == true) {
      paddleYRight -= yMove;
      stopLeft = false;
    }
    if (stopLeft == true) {
      upLeft = false;
      downLeft = false;
    }
    // Moving Right Paddle
    if (upRight == true && downRight == false) {
      paddleYLeft - = yMove;
      stopRight = false;
    }
    if (stopRight == true) {
      upRight = false;
      downRight = false;
    }
    // Redrawing Paddle if too high
    if (paddleYLeft < height * 0) paddleYLeft = 0;
    if (paddleYLeft > height - paddleHeight) paddleYLeft = height - paddleHeight;
    //
    // Redrawing Paddle if too low
     if (paddleYRight < height * 0) paddleYRight = 0;
    if (paddleYRight > height - paddleHeight) paddleYRight = height - paddleHeight;
    //
    fill(white);
    fill(colour);
    textSize(textSize);
    textAlign (CENTER, CENTER);
text(Integer.toString(leftScore), leftBoardX, leftBoardY, boardSide, boardSide);
text(Integer.toString(rightScore), rightBoardX, rightBoardY, boardSide, boardSide); 
  }//End gamePlay
  //
  // Getters and Setters
  void generalReset() {
    upLeft = false;
    downLeft = false;
    stopLeft = false;
    upRight = false;
    downRight = false;
    stopRight = false;
  }
  void upLeftGetter() { //Get Keyboard input
    generalReset();
    upLeft = true;
  }
  void downLeftGetter() { //Get Keyboard input
    generalReset();
    downLeft = true;
  }
  void stopLeftGetter() { //Get Keyboard input
    generalReset();
    stopLeft = true;
  }
   void upRightGetter() { //Get Keyboard input
    generalReset();
    upRight = true;
  }
  void downRightGetter() { //Get Keyboard input
    generalReset();
    downRight = true;
  }
  void stopRightGetter() { //Get Keyboard input
    generalReset();
    stopRight = true;
  }
  void leftScoreSetter() { //Set Left Score Variable
    leftScore++;
  }
  void rightScoreSetter() { //Set Right Score Variable
    rightScore++;
  }
  int paddleXLeftGetter() {
    return paddleXLeft;
  }//End Paddle X Left Getter
  int paddleXRightGetter() {
    return paddleXRight;
  }//End Paddle X Left Getter
  int paddleWidthGetter() {
    return paddleWidth;
  }//End Paddle X Left Getter
  public int paddleYLeftGetter() {
    return paddleYLeft;
  }//End Paddle X Left Getter
  public int paddleYRightGetter() {
    return paddleYRight;
  }//End Paddle X Left Getter
  public int paddleHeightGetter() {
    return paddleHeight;
    }//End paddleHeight Getter
}//End Ball
