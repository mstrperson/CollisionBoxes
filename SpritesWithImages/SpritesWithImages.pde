Star star;
ArrayList<ICollisionBox> collidingObjects;

Blob blob;
Block block;


void setup()
{
  size(800, 600);
  star = new Star(400, 300, 2, 1, 30);
  blob = new Blob(100, 100, 50, color(0, 200, 20));
  block = new Block(300, 200, 60, 40, color(180, 40, 175));
  block.vel = new Vector2(random(-5, 5), random(-5, 5));
  
  collidingObjects.add(star);
  collidingObjects.add(blob);
  collidingObjects.add(block);
}

void checkCollisions()
{
  
}

void draw()
{
  background(180, 80, 0);
  
  blob.keyboardControl();
  blob.move();
  block.followMouse();
  block.move();
  blob.drawSprite();
  block.drawSprite();
  
  star.move();
  star.drawSprite();
  
  /*if(blob.collidesWith(star))
  {
    blob.vel = blob.vel.inverse();
  }
  if(block.collidesWith(star))
  {
    block.vel = block.vel.inverse();
    textSize(50);
    fill(255, 0, 0);
    text("BLAM!", 100, 600);
  }
  
  if(blob.collidesWith(block))
  {
    textSize(50);
    fill(255,0,0);
    text("BOOM",100, 600);
  }*/
  
  //star.followMouse();
  //star.drawSprite();
}
