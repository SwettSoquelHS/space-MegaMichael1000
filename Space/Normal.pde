class Normal {
  protected float x_pos;
  protected float y_pos;
  protected float base_x;
  protected float base_y;
  protected float speed;
  protected float angle = 0;
  float red = random(255);
  float green = random(255);
  float blue = random(255);
  
  public Normal(float x_pos, float y_pos, float speed) {
    this.x_pos = x_pos;
    this.y_pos = y_pos;
    this.speed = speed;
    base_x = x_pos;
    base_y = y_pos;
  }
  
  void show() {
    pushMatrix();
    translate(x_pos,y_pos);
    fill(red, green, blue);
    ellipseMode(CENTER);
    ellipse(0,0,20,20);
    popMatrix();
  }
  
  void move() {
    angle += (1/dist(base_x, base_y, width/2, height/2)) * speed;
    x_pos = x_pos + cos(angle) * speed;
    y_pos = y_pos + sin(angle) * speed;
  }
}
