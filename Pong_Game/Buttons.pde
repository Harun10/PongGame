float ballStartPositionX;
float ballStartPositionY;
float ballSize;
float paddleStartY;
float paddleMoveXLeft;
float paddleMoveYLeft;
float paddleMoveXRight;
float paddleMoveYRight;
float paddleWidth;
float paddleHeight;
int LightMode1;
int LightMode2;
int DarkMode1;
int DarkMode2;

void Buttons() {
  fill(#2EFFF3);
  rect(displayWidth*1/3.1, displayHeight*0, displayWidth*1/3, displayHeight*1/1); 
  fill(255);
  if ((mouseX > width*1/3 && mouseX<width*0.9/1 && mouseY < height*1/10) && mouseY > height*0/1) {
    fill(#0300FF);
    rect(displayWidth*0.9/1, displayHeight*0/1, displayWidth*1/3, displayHeight*1/10);  
    fill(51);
  } else {
    fill(#FF352E);
    rect(displayWidth*0.9/1, displayHeight*0/1, displayWidth*1/3, displayHeight*1/10);
    fill(255);
    text("Quit", width*15/16, height*1/16);
  }

  if ((mouseX > width*14.4/16 && mouseX<width*displayWidth*15.9/16 && mouseY < height*1/10) && mouseY > height*0/1) {
    fill(#0300FF);
    rect(displayWidth*0.9/1, displayHeight*0/1, displayWidth*1/3, displayHeight*1/10);
    fill(51);
  } else {
    fill(#FF352E);
    rect(displayWidth*0.9/1, displayHeight*0/1, displayWidth*1/3, displayHeight*1/10);
    fill(255);
  }

  if ((mouseX > width*5.1/16 && mouseX<width*10.44/16 && mouseY < height*1.2/10) && mouseY > height*0/1) {
    fill(124);
    rect(displayWidth*1/3.1, displayHeight*1/40, displayWidth*1/3, displayHeight*1/10);
    fill(255);
  } else {
    fill(163);
    rect(displayWidth*1/3.1, displayHeight*1/40, displayWidth*1/3, displayHeight*1/10);
    fill(0);
  }

  if ((mouseX > width*0/16 && mouseX<width*1.6/16 && mouseY < height*1.2/10) && mouseY > height*0/1) {
    fill(255);
    rect(displayWidth*0.001/1, displayHeight*0/1, displayWidth*1/10, displayHeight*1/10);
    fill(255);
  } else {
    fill(163);
    rect(displayWidth*0.001/1, displayHeight*0/1, displayWidth*1/10, displayHeight*1/10);
    fill(0);
  }

  if (clickToStart == 0) {
    fill(255);
    rect(displayWidth*1/3.1, displayHeight*1/1.5, displayWidth*1/3, displayHeight*1/9);
    fill(0);
    textSize(30);
    text("Click to Start", displayWidth*7/16 , displayHeight*11.7/16);
  }else{
  }
 
    
}
