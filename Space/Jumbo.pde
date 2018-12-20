class Jumbo extends Normal {
  public Jumbo(float x_pos, float y_pos, float speed, float angle, float r, float g, float b) {
    super(x_pos, y_pos, speed, angle, r, g, b);
  }
  
  void show() {
    pushMatrix();
    translate(x_pos,y_pos);
    fill(r,g,b);
    ellipseMode(CENTER);
    ellipse(0,0,100,100);
    popMatrix();
  }
}
