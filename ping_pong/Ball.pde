class Ball
{
  float xPos;
  float yPos;
  float xSpeed;
  float ySpeed;

  Ball(float tempX, float tempY, int tempXSpeed, int tempYSpeed)
  {
    xPos = tempX;
    yPos = tempY;
    xSpeed = tempXSpeed;
    ySpeed = tempYSpeed;
  }

  void display() 
  {
    ellipseMode(CENTER);
    fill(255);
    ellipse(xPos, yPos, 15, 15);
  }

  void move() 
  {
    yPos = yPos + ySpeed;
    xPos = xPos + xSpeed;

    if (yPos > height - 7.5) 
    {
      ySpeed = ySpeed*(-1);
    } else if (yPos < 7.5) 
    {
      ySpeed = ySpeed*(-1);
    }
  }
}
