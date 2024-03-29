//Global Varlables
int ballMoveX;
int ballMoveY;
int speedX = 3; // speed
int speedY = 3; // speed
Boolean paddleRightUp = false;
Boolean paddleRightDown = false;
Boolean paddleLeftUp = false;
Boolean paddleLeftDown = false;
int player1score = 0;
int player2score = 0;
int clickToStart = 0;
Boolean lightModeOn = false;
Boolean rallya = true;

void setup() {
  fullScreen(); 
  screenSizeChecker();
  ballStartPositionX = int (displayWidth*1/2);
  ballStartPositionY = int(displayHeight*1/2);
  ballSize = int (displayWidth*1/128);
  ballMoveX = int(ballStartPositionX);
  ballMoveY = int(ballStartPositionY);

  paddleStartY = (height/2) - (height*1/16);
  paddleMoveYLeft = paddleStartY; 
  paddleMoveYRight = paddleStartY;
  paddleHeight = displayHeight* 1/8;
  paddleWidth =  displayWidth*1/100;
  paddleMoveXLeft = 0+displayWidth*1/30;
  paddleMoveXRight = 0+displayWidth*29/30;
  paddleMoveYLeft = (displayHeight/2) - (displayHeight*1/16);
  paddleMoveYRight = (displayHeight/2) - (displayHeight*1/16);

  //Colors
  DarkMode1 = #0300FF;
  DarkMode2 = 51; 
  LightMode1 = #FF352E;
  LightMode2 = 255;

  int number = int (random (-4, 4));
  while (number == 0 || number == 1 || number == 2 || number == -1 || number == -2) {
    number = int (random (-4, 4));
  }
  speedX = number;
  println("starting speedX", speedX);
  number = int (random (-4, 4));

  while (number == 0 || number == 1 || number == 2 || number == -1 || number == -2) {
    number = int (random (-4, 4));
  }
  speedY = number;
  println("starting speedY", speedX);

  //Create a ball
  ellipse(ballStartPositionX, ballStartPositionY, ballSize, ballSize);
  noLoop();
  
}
void draw() {

  //Move the ball
  if (lightModeOn == true) {
    background(LightMode2);
  } else {
    background(DarkMode2);
  }

  //println(lightModeOn);
  //println("X Start:", ballStartPositionX, "Start Y:", ballStartPositionY);
  //println("X Move:", ballMoveX, "Y Move", ballMoveY);

  if ( ballMoveX <= paddleMoveXLeft ) {
    //noLoop(); // End the Game
    ballMoveX = int(ballStartPositionX);
    ballMoveY = int(ballStartPositionY);
    player2score += 1;
    fill(#FF0000);
    rect( displayWidth*0, displayHeight*0, displayWidth *1/2, displayHeight*1);
    fill(#0000FF);
    rect( displayWidth*0, displayHeight*0, displayWidth *1/2, displayHeight*1);
    fill(#FF0000);
    rect( displayWidth*0, displayHeight*0, displayWidth *1/2, displayHeight*1);
  }
  if ( ballMoveX >= paddleMoveXRight+paddleWidth ) {
    //noLoop(); // End the Game
    ballMoveX = int(ballStartPositionX);
    ballMoveY = int(ballStartPositionY);
    player1score += 1;
    fill(#E5FF27);
    rect( displayWidth*1/2, displayHeight*0, displayWidth *1, displayHeight*1);
    fill(#E5FF27);
    rect( displayWidth*1/2, displayHeight*0, displayWidth *1, displayHeight*1);
    fill(#E5FF27);
    rect( displayWidth*1/2, displayHeight*0, displayWidth *1, displayHeight*1);
  }
  if (lightModeOn == true) {
    fill(LightMode1);
  } else {
    fill(DarkMode1);
  }





  if (ballMoveY >= displayHeight - ballSize/2 || ballMoveY <= 0 + ballSize/2) {
    speedY = speedY * -1;
  }
  if (ballMoveX >= displayWidth - ballSize/2 || ballMoveX <= 0 + ballSize/2) {
    speedX = speedX * -1;
  }

  if (ballMoveY <= displayHeight*2/16 && ballMoveX >= displayWidth*8.3/16 + ballSize/2 && ballMoveX <= displayWidth*9.4/16 && ballMoveY >= displayHeight*0.4/16) {
    speedY = speedY * -1;
  }

  if (ballMoveY <= displayHeight*2/16 && ballMoveX >= displayWidth*5.7/16 + ballSize/2 && ballMoveX <= displayWidth*6.6/16 && ballMoveY >= displayHeight*0.4/16) {
    speedY = speedY * -1;
  }

  // Right paddle
  if (paddleRightUp == true ) {
    paddleMoveYRight -= 2;
  }
  if (paddleRightDown == true) {
    paddleMoveYRight += 2;
  }
  if (paddleMoveYRight <= 0 ) {
    paddleMoveYRight = 0;
  }
  if (paddleMoveYRight >= displayHeight-paddleHeight ) {
    paddleMoveYRight = displayHeight-paddleHeight;
  }

  //Left paddle
  if (paddleLeftUp == true ) {
    paddleMoveYLeft -= 2;
  }
  if (paddleLeftDown == true) {
    paddleMoveYLeft += 2;
  }
  if (paddleMoveYLeft <= 0 ) {
    paddleMoveYLeft = 0;
  }
  if (paddleMoveYLeft >= displayHeight-paddleHeight ) {
    paddleMoveYLeft = displayHeight-paddleHeight;
  }


  // Bounce off Paddles, order of arithemtic important
  if (ballMoveX <= paddleMoveXLeft+paddleWidth+ballSize/2) { // Bounce or Goal
    if (ballMoveY >= paddleMoveYLeft && ballMoveY <= paddleMoveYLeft+paddleHeight) {
      speedX = speedX * -1;
    }
  }

  if (ballMoveX >= paddleMoveXRight-ballSize/2) { // Bounce or Goal
    if (ballMoveY >= paddleMoveYRight && ballMoveY <= paddleMoveYRight+paddleHeight) {
      speedX = speedX * -1;
    }
  }
  ballMoveX += speedX; 
  ballMoveY += speedY;


  //println("Ball " + "X Move:", ballMoveX + " Y Move:", ballMoveY);

  noStroke();
  rect(paddleMoveXLeft, paddleMoveYLeft, paddleWidth, paddleHeight); //Paddle #1
  rect(paddleMoveXRight, paddleMoveYRight, paddleWidth, paddleHeight);// Paddle #2


  if (lightModeOn == true) {
    fill(LightMode1);
  } else {
    fill(DarkMode1);
  }
  //Text
  textSize(108);
  text(player1score, displayWidth*4/16, displayHeight*0.1/1);
  text(player2score, displayWidth*11/16, displayHeight*0.1/1);



  //ball Color 
  if (lightModeOn == true) {
    fill(#0000FF); //Light mode
  } else {
    fill(#00FF97); //Dark mode
  }
  ellipse(ballMoveX, ballMoveY, ballSize, ballSize);
  Buttons();
}

void keyPressed () {
  if (key == CODED && keyCode == UP) {
    paddleRightUp = true; //Codes continuous action
    paddleRightDown = false; //Only one action at a time
  }
  if (key == CODED && keyCode == DOWN) {
    paddleRightDown = true; //Codes continuous action
    paddleRightUp = false;
  }
  if (key == CODED && key == 'W' || key == 'w') {
    paddleLeftUp = true; //Codes continuous action
    paddleLeftDown = false;
  }
  if (key == CODED && key == 'S' || key == 's') {
    paddleLeftDown = true; //Codes continuous action
    paddleLeftUp = false;
  }
}

void mouseClicked() {{
  clickToStart += 1;
  if ((mouseX > width*14.4/16 && mouseX<width*displayWidth*15.9/16 && mouseY < height*1/10) && mouseY > height*0/1) {
    exit();
  }
  rect(displayWidth*0.001/1, displayHeight*0/1, displayWidth*1/10, displayHeight*1/10);
}


  if ((mouseX > width*5.1/16 && mouseX<width*10.44/16 && mouseY < height*1.2/10) && mouseY > height*0/1) {
    if (lightModeOn == false) {
      lightModeOn = true;
    } else {
      lightModeOn = false;
    }
  }
  if (clickToStart == 1) {
    loop();
    clickToStart +=1;
  }
  if ((mouseX > width*0/16 && mouseX<width*1.6/16 && mouseY < height*1.2/10) && mouseY > height*0/1) {
    player1score = 0;
    player2score = 0;
    
  }
      rect(displayWidth*1/3.1, displayHeight*1/1.5, displayWidth*1/3, displayHeight*1/9);  
  
}
