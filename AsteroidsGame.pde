//your variable declarations here
Spaceship skibiti = new Spaceship();
Star[] sigma = new Star[400];
ArrayList <Asteroid> rocks = new ArrayList <>();

public void setup() {
  size(800, 800);
  for (int i = 0; i < sigma.length; i++) {
    sigma[i] = new Star();
  }
  for(int j = 0; j < 80; j++){
    rocks.add(new Asteroid());
  }
}

public void draw() {
  background(0);
  for (int i = 0; i < sigma.length; i++) {
    sigma[i].show();
  }
  skibiti.move();
  skibiti.show();
  
  for (int j = 0; j < rocks.size(); j++) {
    rocks.get(j).show();
    rocks.get(j).move();
    float d = dist(skibiti.getX(), skibiti.getY(), rocks.get(j).getX(), rocks.get(j).getY());
    if (d < 25){
      rocks.remove(j);
        j--;
    }
  }
}

public void keyPressed() {
  if(key == 'q'){ //alt for stopping
    skibiti.myXspeed = 0;
    skibiti.myYspeed = 0;
  }
  if(key =='w'){
    skibiti.accelerate(.5);
  }
  if(key == 'a'){
    skibiti.turn(-20);
  }
  if(key =='s'){
    skibiti.accelerate(-.6);
  }
  if(key == 'd'){
    skibiti.turn(20);
  }
}
