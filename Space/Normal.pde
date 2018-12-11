class Normal {
  protected float x_pos;
  protected float y_pos;
  protected float base_x;
  protected float base_y;
  protected float speed;
  protected float angle;
  protected float r;
  protected float g;
  protected float b;
  
  public Normal(float x_pos, float y_pos, float speed, float angle, float r, float g, float b) {
    this.x_pos = x_pos;
    this.y_pos = y_pos;
    this.speed = speed;
    this.angle = angle;
    this.r = r;
    this.g = g;
    this.b = b;
    base_x = x_pos;
    base_y = y_pos;
  }
  
  void show() {
    pushMatrix();
    translate(x_pos,y_pos);
    fill(r,g,b);
    ellipseMode(CENTER);
    ellipse(0,0,20,20);
    popMatrix();
  }
  
  void move() {
    x_pos = x_pos + cos(angle) * speed;
    y_pos = y_pos + sin(angle) * speed;
  }
  
  void reset() {
    x_pos = base_x;
    y_pos = base_y;
  }
}
