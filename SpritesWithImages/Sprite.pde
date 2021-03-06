abstract class Sprite
{
  protected Vector2 pos;
  protected Vector2 vel;
  
  
  /// Constructors
  public Sprite(float x, float y)
  {
    pos = new Vector2(x, y);
    vel = new Vector2(0, 0);
  }
  
  public Sprite(float x, float y, float dx, float dy)
  {
    pos = new Vector2(x, y);
    vel = new Vector2(dx, dy);
  }
  
  public Sprite(Vector2 s)
  {
    pos = s;
    vel = new Vector2(0, 0);
  }
  
  /// Behaviors
  public void moveTo(Vector2 newPosition)
  {
    pos = newPosition;
  }
  
  public void setVelocity(Vector2 newVelocity)
  {
    vel = newVelocity;
  }
  
  public void move()
  {
    pos = pos.add(vel);
    
    if(pos.x > width) pos.x -= width; // subtract width from pos.x
    else if( pos.x < 0) pos.x += width; // add width to pos.x
    
    if(pos.y > height) pos.y -= height;
    else if(pos.y < 0) pos.y += height;
  }
  
  public Vector2 getPosition()
  {
    return pos;
  }
  
  public Vector2 getVelocity()
  {
    return vel;
  }
  
  // make this Sprite move at the speed := |<dx, dy>|
  // directly toward your mouse pofloater!
  void followMouse()
  {
    float speed = vel.mag();//sqrt(vel.x*vel.x + vel.y*vel.y);
    
    Vector2 mLoc = new Vector2(mouseX, mouseY);
    Vector2 mDir = mLoc.subtract(pos);
    
    //float delX = mouseX - pos.x;
    //float delY = mouseY - pos.y;
    
    //float mag = mDir.mag();
    
    pos = pos.add(mDir.unitVector().scale(speed));
    
    //if(delX != 0) pos.x += (delX / mag) * speed;
    //if(delY != 0) pos.y += (delY / mag) * speed;
  }
  
  public float distanceTo(Sprite other)
  {
    Vector2 diff = other.pos.subtract(this.pos);
    return diff.mag();
  }
  
  public void keyboardControl()
  {
    // if I hit the UP arrow on the keyboard.
    if(keyCode == UP)
    {
      vel = new Vector2(0, -2);
    }
    if(keyCode == DOWN)
    {
      vel = new Vector2(0, 2);
    }
    if(keyCode == LEFT)
    {
      vel = new Vector2(-2, 0);
    }
    if(keyCode == RIGHT)
    {
      vel = new Vector2(2, 0);
    }
    
    if(key == ' ') vel = new Vector2(0, 0);
  }
  public abstract void drawSprite();
}
