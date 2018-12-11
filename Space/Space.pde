//Declare your variables here
// so try declaring one Particle first, then instantiate it in setup, and use move and show in draw()
Normal[] planets;

void setup() {
	size(800,600);
  background(0);
  planets = new Normal[1000];
  float r = random(256);
  float g = random(256);
  float b = random(256);
  for(int i=0; i<planets.length-2; i++) {
    float s = (float)(5*Math.random()+1);
    float a = (float)(2*Math.PI*Math.random());
    planets[i] = new Normal(width/2,height/2,s,a,r,g,b);
  }
  r = random(256);
  g = random(256);
  b = random(256);
  float s = (float)(5*Math.random()+1);
  float a = (float)(2*Math.PI*Math.random());
  planets[998] = new Jumbo(width/2,height/2,s,a,r,g,b);
  r = random(256);
  g = random(256);
  b = random(256);
  s = (float)(5*Math.random()+1);
  a = (float)(2*Math.PI*Math.random());
  planets[999] = new Oddball(width/2,height/2,s,a,r,g,b);
}


void draw() {
  background(0);
	for(int i=0; i<planets.length; i++) {
    planets[i].show();
    planets[i].move();
  }
}

void mousePressed() {
  for(int i=0; i<planets.length; i++) {
    planets[i].reset();
  }
}
