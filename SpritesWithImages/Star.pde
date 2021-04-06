public class Star implements ICollisionBox
{
  // Properties / Attributes
  protected Vector2 pos;
  protected Vector2 vel;
  
  protected float r;
  
  // Constructor
  public Star(float x, float y, float r)
  {
    pos = new Vector2(x, y);
    vel = new Vector2(0, 0); // zero velocity
    this.r = r;
  }
  
  // Constructor with additional parameters
  public Star(float x, float y, float dx, float dy, float r)
  {
    pos = new Vector2(x, y);
    vel = new Vector2(dx, dy);
    this.r = r;
  }
  
  // Behaviors
  
  public void draw()
  {
    fill(#37D5FF);
    noStroke();
    // draw a STAR
    
    Vector2 v = new Vector2(0, -r);
    Vector2 v2 = v.rotate(PI/5).scale(0.5);
    Vector2 v3 = v.rotate(2*PI/5);
    Vector2 v4 = v2.rotate(2*PI/5);
    Vector2 v5 = v3.rotate(2*PI/5);
    Vector2 v6 = v4.rotate(2*PI/5);
    Vector2 v7 = v5.rotate(2*PI/5);
    Vector2 v8 = v6.rotate(2*PI/5);
    Vector2 v9 = v7.rotate(2*PI/5);
    Vector2 v10 = v8.rotate(2*PI/5);
    
    beginShape();
    
    vertex(pos.add(v).x, pos.add(v).y);
    vertex(pos.add(v2).x, pos.add(v2).y);
    vertex(pos.add(v3).x, pos.add(v3).y);
    vertex(pos.add(v4).x, pos.add(v4).y);
    vertex(pos.add(v5).x, pos.add(v5).y);
    vertex(pos.add(v6).x, pos.add(v6).y);
    vertex(pos.add(v7).x, pos.add(v7).y);
    vertex(pos.add(v8).x, pos.add(v8).y);
    vertex(pos.add(v9).x, pos.add(v9).y);
    vertex(pos.add(v10).x, pos.add(v10).y);
    
    endShape();
  }
  
  public void move()
  {
    // step the position "one frame" by the velocity vector.
    pos = pos.add(vel);
    
    if(pos.x - 15 > width) pos.x = width - 15;
    else if(pos.x - 15 < 0) pos.x = -15;
    
    if(pos.y - 25 > height) pos.y = height -25;
    else if(pos.y -25 < 0) pos.y = -25;
  }
}
