float ex;
float ey;
float r;
float rMars;
float radius;

void setup()
{
  size(1600,1000);
  ex = 300;
  ey = 0;
  r = 0;
  rMars = 0;
  radius = 20;
}

void draw()
{
  background(0,0,29);
  earthAndMoon();
  mars();
  venus();
  mercury();
}

void earthAndMoon()
{
  pushMatrix();
    translate(width/2, height/2);
    rotate(radians(r));
    
   //sun
    fill(255,204,51);
    ellipse(0,0,100,100);
    
    //earth
    stroke(140,177,222);
    fill(140,177,222);
    ellipse(ex,ey,20,20);
    pushMatrix();
       //moon
       translate(ex,ey);
       rotate(radians(-r*3));
       fill(255);
       ellipse(50,ey,5,5);
     popMatrix();
   popMatrix();
   r+=1;
}

void mars()
{
  translate(width/2, height/2);
  rotate(radians(r*0.8));
  fill(226,123,88);
  stroke(226,123,88);
  ellipse(300*1.52, 0, radius/1.8, radius/1.8);
}

void venus()
{
  rotate(radians(r*0.7));
  fill(187,183,171);
  stroke(187,183,171);
  ellipse(300/1.4, 0, radius/1.05, radius/1.05);
}

void mercury()
{
  rotate(radians(r));
  fill(206,204,209);
  stroke(206,204,209);
  ellipse(300/2.63, 0 , radius/2.6, radius/2.6);
}
