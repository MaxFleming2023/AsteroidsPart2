class Asteroid extends Floater {
  private double rotSpeed;
  public Asteroid() {
    rotSpeed = 4;
    myColor = 158;
    corners = 6;
    myCenterX = (int)(Math.random()*width);
    myCenterY = (int)(Math.random()*height);
    myXspeed = (int)(Math.random()*5)-2.5;
    myYspeed = (int)(Math.random()*5)-2.5;
    myPointDirection = (int)(Math.random()*360);
    xCorners = new int [] {(int)(Math.random()*10)-10, (int)(Math.random()*10)+7, (int)(Math.random()*10)+12, (int)(Math.random()*10)+4, (int)(Math.random()*10)-10, (int)(Math.random()*10)-6};
    yCorners = new int [] {(int)(Math.random()*10)-8, (int)(Math.random()*10)-7, (int)(Math.random()*10), (int)(Math.random()*10)+9, (int)(Math.random()*10)+8, (int)(Math.random()*10)};
  }
  public void move() {
    turn(rotSpeed);
    myCenterX += myXspeed;
    myCenterY += myYspeed;
    if (myCenterX >width) {
      myCenterX = 0;
    } else if (myCenterX<0) {
      myCenterX = width;
    }
    if (myCenterY >height) {
      myCenterY = 0;
    } else if (myCenterY < 0) {
      myCenterY = height;
    }
  }
}
