class Asteroid extends Floater{
  private int rotSpeed;
  public Asteroid(){
    rotSpeed = (int)(Math.random()*8)+3;
    corners = 6;
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -11;
    yCorners[0] = -8;
    xCorners[1] = 7;
    yCorners[1] = -8;
    xCorners[2] = 13;
    yCorners[2] = 0;
    xCorners[3] = 6;
    yCorners[3] = 10;
    xCorners[4] = -11;
    yCorners[4] = 8;
    xCorners[5] = -5;
    yCorners[5] = 0;
    myColor= color((int)(Math.random()*255)+5, 0, 0);
    myCenterX = (int)(Math.random()*800);
    myCenterY = (int)(Math.random()*800);
    myDirectionX = (int)(Math.random()* 6 - 3);
    myDirectionY = (int)(Math.random()*6-3);
    rotSpeed = (int)(Math.random()*20)-15;
  }
   public void setCenterX(int x){
    myCenterX = x;
    }
    public void setCenterY(int y){
      myCenterY = y;
    }
    public int getX(){
    return (int)myCenterX;
    }
    public int getY(){
    return (int)myCenterY;
    }
    public double getPointDirection() {
        return myPointDirection;
    }
    public void setPointDirection(int degrees) {
        myPointDirection = degrees;
    }
        public void setDirectionX(int x)
    {
        myDirectionX = x;
    }
    public double getDirectionX()
    {
      return myDirectionX;
    }
    public void setDirectionY(int y)
    {
        myDirectionY = y;
    }
    public double getDirectionY()
    {
      return myDirectionY;
    }
    public void setX(int x){
      myCenterX = x;
    }
    public void setY(int y){
      myCenterY = y;
    }
    public void move(){
      turn(rotSpeed);
      super.move();
    }
}
