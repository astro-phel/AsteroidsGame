//your variable declarations here
Spaceship skibiti = new Spaceship();
Star[] sigma = new Star[400];
ArrayList<Asteroid> rocks = new ArrayList<>();
ArrayList<Bullet> bullet = new ArrayList<>();

public void setup() {
  size(800, 800);
  for (int i = 0; i < sigma.length; i++) {
    sigma[i] = new Star();
  }
  for (int j = 0; j < 80; j++) {
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
    float spaceshipX = skibiti.getX();
    float spaceshipY = skibiti.getY();
    float asteroidX = rocks.get(j).getX();
    float asteroidY = rocks.get(j).getY();
    if (dist(spaceshipX, spaceshipY, asteroidX, asteroidY) < 25) {
      rocks.remove(j);
      j--;
      continue;
    }
    for (int i = 0; i < bullet.size(); i++) {
      float bulletX = bullet.get(i).getX();
      float bulletY = bullet.get(i).getY();
      if (dist(bulletX, bulletY, asteroidX, asteroidY) < 20) {
        rocks.remove(j);
        bullet.remove(i);
        break;
      }
    }
  }
  for (int i = 0; i < bullet.size(); i++) {
    bullet.get(i).show();
    bullet.get(i).move();
  }
}
public void keyPressed() {
  if (key == 'q') {
    skibiti.myXspeed = 0;
    skibiti.myYspeed = 0;
  }
  if (key == 'w') {
    skibiti.accelerate(0.5);
  }
  if (key == 'a') {
    skibiti.turn(-20);
  }
  if (key == 's') {
    skibiti.accelerate(-0.6);
  }
  if (key == 'd') {
    skibiti.turn(20);
  }
  if (key == ENTER) {
    bullet.add(new Bullet(skibiti)); 
  }
}//your variable declarations here
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
