float radius;
float r;
float x;
float y;
float rMars;
float rVenus;
float rMercury;
float earthSpeed;

void setup()
{
  size(1600,1000);
  ellipseMode(CENTER);
  background(0);
  strokeWeight(2);
  radius = 20;
  r=0;
  rVenus=0;
  rMars=0;
  rMercury=0;
  earthSpeed = 0.5;
  x=800;
  y=500;
}

void draw()
{
  background(0,0,29);
  sun();
  earth();
  mars();
  venus();
  mercury();
}

void earth()
{
  translate(x,y);
  rotate(radians(r));
  fill(140,177,222);
  stroke(140,177,222);
  ellipse(300, 0, radius, radius);
  r+=1;
}

void sun()
{
  fill(255,204,51);
  stroke(255,204,51);
  ellipse(width/2, height/2, 100, 100);
}

void mars()
{
  rotate(radians(rMars));
  fill(226,123,88);
  stroke(226,123,88);
  ellipse(300*1.52, 0, radius/1.8, radius/1.8);
  rMars-=0.19;
}

void venus()
{
  rotate(radians(rVenus));
  fill(187,183,171);
  stroke(187,183,171);
  ellipse(300/1.4, 0, radius/1.05, radius/1.05);
  rVenus += 0.37;
}

void mercury()
{
  rotate(radians(rMercury));
  fill(206,204,209);
  stroke(206,204,209);
  ellipse(300/2.63, 0 , radius/2.6, radius/2.6);
  rMercury += 0.43;
}

  
