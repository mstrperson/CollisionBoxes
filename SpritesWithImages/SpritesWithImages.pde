ImageSprite star;
ArrayList<ICollisionBox> collidingObjects;

Blob blob;
Block block;

void setup()
{
  size(800, 600);
  //star = new ImageSprite(100, 200, "star_transparent.png");
  //star.vel = new Vector2(2, 3);
  blob = new Blob(100, 100, 50, color(0, 200, 20));
  block = new Block(300, 200, 60, 40, color(180, 40, 175));
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
  
  if(blob.collidesWith(block))
  {
    textSize(50);
    fill(255,0,0);
    text("BOOM",100, 600);
  }
  
  //star.followMouse();
  //star.drawSprite();
}
