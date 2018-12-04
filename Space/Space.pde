//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Normal[] planets;

void setup() {
	size(800,600);
  background(0);
  planets = new Normal[4];
  for(int i=0; i<planets.length; i++) {
    float x = (float)(width*Math.random());
    float y = (float)(height*Math.random());
    float s = (float)(3*Math.random()+2);
    float a = (float)(2*Math.PI*Math.random());
    planets[i] = new Normal(x,height/2,s);
  }
}
 

void draw() {
  background(0);
	for(int i=0; i<planets.length; i++) {
    planets[i].show();
    planets[i].move();
  }
}
