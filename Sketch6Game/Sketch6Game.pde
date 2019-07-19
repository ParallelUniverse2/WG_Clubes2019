Player player;
ArrayList<Wall> walls;
int mode; // 0: not started 1: playing 2: game over
boolean removeWall;
int count, score, spawnTime;
float xvel;
void setup() {
  colorMode(RGB);
  player = new Player(100,300,25,color(0,0,255));
  size(1000,600);
  mode = 0;
  walls = new ArrayList<Wall>();
  removeWall = false;
  count = 0;
  score = 0;
  spawnTime = 100;
  xvel = -3;
}
void draw() {
  colorMode(HSB,360,100,100);
  background(map(millis()%10000,0,10000,0,360),100,100);
  colorMode(RGB);
  if (mode == 0) {
    textSize(30);
    fill(0);
    text("Press space to start", 350, 250);
  } 
  else if (mode == 1) {
    player.draw();
    player.move();
    if (count % spawnTime == 0)  {
      walls.add(new Wall(1000, random(150,450), xvel));
    }
    for (Wall wall : walls) {
      wall.draw();
      wall.move();
      if (wall.x < 0) removeWall = true;
      // check collision
      if (player.x >= wall.x && !wall.hasCollided) {
        if (player.y < wall.y-wall.gap/2 || player.y > wall.y+wall.gap/2) mode = 2;
        else {score++; wall.hasCollided = true;}
      }
      wall.xv = xvel;
    }
    if (removeWall) walls.remove(walls.get(0));
    if (count % 420 == 0) {xvel--; spawnTime = int(-300/xvel); count = 1;}
    count++;
    removeWall = false;
    colorMode(HSB,360,100,100);
    fill(map((millis()+5000)%10000,0,10000,0,360),100,100);
    textSize(20);
    text("Score: "+score, 900, 50);
    text("Space: jump", 50, 50);
  } 
  else if (mode == 2) {
    textSize(30);
    fill(0);
    text("Game over", 400, 200);
    text("Score: "+score, 400, 300);
    text("Press space to try again.", 400, 400);
  }
}
void keyPressed() {
  if (key == ' ') {
    if (mode == 0) mode++;
    else if (mode == 1) player.vy = -8;
    else setup();
  }
}
