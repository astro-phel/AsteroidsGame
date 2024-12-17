//your variable declarations here
Spaceship skibiti = new Spaceship();
Star[] sigma = new Star[400];

public void setup() {
  size(800, 800);
  for (int i = 0; i < sigma.length; i++) {
    sigma[i] = new Star();
  }
}

public void draw() {
  background(0);
  for (int i = 0; i < sigma.length; i++) {
    sigma[i].show();
  }
  skibiti.move();
  skibiti.show();
}

public void keyPressed() {
  if(key == 'q'){ //alt for stopping
    skibiti.myXspeed = 0;
    skibiti.myYspeed = 0;
  }
  if(key =='w'){
    skibiti.accelerate(.3);
  }
  if(key == 'a'){
    skibiti.turn(-15);
  }
  if(key =='s'){
    skibiti.accelerate(-.4);
  }
  if(key == 'd'){
    skibiti.turn(15);
  }
}
