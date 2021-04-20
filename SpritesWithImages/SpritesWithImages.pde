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
  //block.vel = new Vector2(random(-5, 5), random(-5, 5));
  
  collidingObjects = new ArrayList<ICollisionBox>();
  
  collidingObjects.add(star);
  collidingObjects.add(blob);
  collidingObjects.add(block);
}

void checkCollisions()
{
  // iterate over the objects in the list
  // counting variable `i` starts at Zero
  // Count up to 1 less than the number of items in the list.
  // count by 1s.
  for(int i = 0; i < collidingObjects.size() - 1; i++)
  {
    // get the object corresponding to the current index.
    ICollisionBox obj = collidingObjects.get(i);
    
    // count variable `j` starts at one more than the first index
    // count until I get to the end of the list.
    // count by 1s
    for(int j = i+1; j < collidingObjects.size(); j++)
    {
      ICollisionBox obj2 = collidingObjects.get(j);
      
      if(obj.collidesWith(obj2))
      {
        textSize(50);
        fill(255, 0,0);
        text("BOOM", 100, 600);
      }
    }
  }
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
  
  
  checkCollisions();
}
