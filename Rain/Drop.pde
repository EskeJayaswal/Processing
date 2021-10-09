class Drop {
  float x = random(0,width);
  float y = random(-200,-100);
  float ySpeed = random(3,6);
  
  void fall()
  {
    y+=ySpeed;
    if(y > height)
    {
      y = random(-200,-100);
    }
  }
  
  void show()
  {
    stroke(150,100,50);
    line(x,y,x,y+10);
  }
}
