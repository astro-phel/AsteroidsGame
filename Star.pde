class Star {
  private int myX, myY;
  public Star() {
    myX = (int)(Math.random()*800);
    myY = (int)(Math.random()*800);
  }
  public void show() {
    fill((int)(Math.random()*255), 0, 0);
    ellipse(myX, myY, 3, 3);
  }
}
