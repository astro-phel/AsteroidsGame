class Spaceship extends Floater {
    public Spaceship() {
        corners = 4;
        xCorners = new int[corners];
        yCorners = new int[corners];
        xCorners[0] = -8;
        yCorners[0] = -8;
        xCorners[1] = 16;
        yCorners[1] = 0;
        xCorners[2] = -8;
        yCorners[2] = 8;
        xCorners[3] = -2;
        yCorners[3] = 0;
        myCenterX = 400;
        myCenterY = 400;
        myPointDirection = 0;
        myXspeed = 0;
        myYspeed = 0;
        myColor = color(255);
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
}
