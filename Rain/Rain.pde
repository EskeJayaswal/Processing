float offSet;
float xPos;


Drop[] drops = new Drop[500];

void setup()
{
  size(1000,600);
  for(int i = 0; i < drops.length; i++)
  {
    drops[i] = new Drop();
  }
  
}

void draw()
{
  background(0,0,50);
  for(int i = 0; i < drops.length; i++)
  {
    drops[i].fall();
    drops[i].show();  } 
}
 
