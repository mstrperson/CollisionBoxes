public interface ICollisionBox
{
  // check if two objects collide.
  public boolean collidesWith(ICollisionBox other);
  
  // get the "Radius" of the object.
  public float getRadius();
  
  // get the position of the object (this is written in Sprite!)
  public Vector2 getPosition();
}
