/* Program note: to illustrate difference of FOR and FOR-Each
 Visual Representation is something different entirely, but interesting
 */
Ball[] wally = new Ball[4]; //Note: wally is a Global Class Object
void setup() {
  size(500, 500);
  for (int i=0; i<wally.length; i++) { //Should this be a Global Variable or Local?
    wally[i] = new Ball(width, height);
  }
}
void draw() {
  //background(0); // turn on to see how position becomes "impossible" due to frameRate and moveX&Y variables
  for (Ball wallie : wally) { //local class instance wallie will work here, know why
    wallie.draw();
  }
}
