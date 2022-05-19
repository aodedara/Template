//Global Variables and objects
int NumberOfStars = 5; //Version of a Static Variable in Pure Java, final here
Ball[] stars = new Ball[NumberOfStars]; //Processing Requires #, Pure Java allows static variable
//
int appWidth, appHeight; //final variables
int smallerDisplayDimension; //final variable
void setup() {
  size (500, 600); //fullscreen, displayWidth, displayHeight
  //Portrait, not landscape or square
  println (width, height, displayWidth, displayHeight);
  appWidth = width;
  appHeight = height;
  smallerDisplayDimension = (appWidth <= appHeight) ? appWidth
: appHeight;
//
  while (redo==true) {
    }
  for (int i=0; i<stars.length; i++) {
    //Randomly choose parameters
   float xRandom = random (small, large); //No stars in net
   float yRandom = random (0, appWidth); //Entire appHeight OK
     float diameterRandom = random (appWidth*1/2, appHeight*1/2, smallerDisplayDimensions*1/120);); //Consider user nput
    star = new Ball (xRandom, yRandom, diameterRandom);
  }
  if (xRandom > stars[j].ballX-stars [j].ballX-stars[j].ballDiameter*1/2 < stars [j].ballX) {}//End WHILE-X
}//End setup
//
void draw() {
  for (int i=0; i<stars.Length; i++) {
    star.drawStar(); 
  }
  
}//End draw
//void keyPressed() {}//End keyPressed
// 
void mousePressed() {}//End mousePressed
//
//End Main Driver`
