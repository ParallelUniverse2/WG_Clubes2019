int x,y,vx,vy,wallL,wallR,floor,ceil;
void setup() {
  size(800,600);
  x=100; y=100;
  vx=5; vy=3;
  wallR = 775; wallL = 25;
  floor = 575; ceil = 25;
}
void draw() {
  background(255);
  fill(0);
  ellipse(x,y,50,50);
  if (x >= wallR) vx *= -1;
  if (x <= wallL) vx *= -1;
  if (y >= floor) vy *= -1;
  if (y <= ceil) vy *= -1;
  x += vx; y += vy;
}
