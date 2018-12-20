class Oddball extends Normal {
  protected float anglechange = 0;
  public Oddball(float x_pos, float y_pos, float speed, float angle, float r, float g, float b) {
    super(x_pos, y_pos, speed, angle,r,g,b);
  }
  
  void move() {
    anglechange = (float)(Math.random()-0.5);
    x_pos = x_pos + cos(angle) * speed;
    y_pos = y_pos + sin(angle) * speed;
    angle += anglechange;
  }
}
