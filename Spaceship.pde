class Spaceship extends Floater {
  public Spaceship() {
    myColor = 0;
    corners = 4;
    xCorners = new int [] {-8, 16, -8, -2};
    yCorners = new int [] {-8, 0, 8, 0};
  }

  public void hyperspace() {
    myCenterX = Math.random()*width;
    myCenterY = Math.random()*height;
    setXspeed(0);
    setYspeed(0);
  }
  public void setXspeed(double x) {
    myXspeed = x;
  }
  public void setYspeed(double y) {
    myYspeed = y;
  }
  public void setRotationDirection(double r) {
    myPointDirection = r;
  }
  public double getRotationDirection() {
    return myPointDirection;
  }
  public void show () { //Draws the floater at the current position
    fill(myColor);
    stroke(255);

   
    translate((float)myCenterX, (float)myCenterY);

  
    float dRadians = (float)(myPointDirection*(Math.PI/180));

    //rotate so that the polygon will be drawn in the correct direction
    rotate(dRadians);

    //draw the polygon
    beginShape();
    for (int nI = 0; nI < corners; nI++) {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);

    //"unrotate" and "untranslate" in reverse order
    rotate(-1*dRadians);
    translate(-1*(float)myCenterX, -1*(float)myCenterY);
  }
}
