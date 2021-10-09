Ball myBall;
Player2 player2;
Player1 player1;

void setup() {
  size(500, 500);
  myBall = new Ball(50, 50, 5, 1);
  player2 = new Player2(width - 25);
  player1 = new Player1(25);
}

void draw() {
  background(0);
  myBall.move();
  myBall.display();
  displayPlayer2();
  deflectBall2();
  displayPlayer1();
  deflectBall();
  gameOver();
}

void gameOver()
{
  if (myBall.xPos > width)
  {
    fill(0);
    background(255, 0, 0);
    textSize(20);

    text("Game Over! Player 1 player wins!", 100, height/2);
  } else if (myBall.xPos < 0)
  {
    fill(0);
    background(255, 0, 0);
    textSize(20);

    text("Game Over! Player 2 player wins!", 100, height/2);
  }
}

void displayPlayer1()
{
  rectMode(CENTER);
  fill(255);
  rect(player1.x, 0+player1.y, 20, 100);
}

void deflectBall()
{
  if (player1.y - 50 <= myBall.yPos && myBall.yPos <= player1.y + 50 && 40 > myBall.xPos) {
    myBall.xSpeed = myBall.xSpeed*(-1);
    //score++;
  }
}

void displayPlayer2()
{
  rectMode(CENTER);
  fill(255);
  rect(player2.x, 0 + player2.y, 20, 100);
}


void deflectBall2()
{
  if (player2.y - 50 <= myBall.yPos && myBall.yPos <= player2.y + 50 && width - 40 < myBall.xPos) {
    myBall.xSpeed = myBall.xSpeed*(-1);
  }
}



void keyPressed() {

  if (key == 'w') {
    player1.y -= 20;
  }
  if (key == 's') {
    player1.y += 20;
  } 
  if (keyCode == UP) {
    player2.y -= 20;
  }
  if (keyCode == DOWN) {
    player2.y += 20;
  }
}
