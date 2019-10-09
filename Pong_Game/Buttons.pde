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

void Buttons(){
  fill(255);
  if ((mouseX > width*1/3 && mouseX<width*1/3.1 && mouseY < height*1/9) && mouseY > height*1/1.5) {
    fill(#0300FF);
    rect(displayWidth*1/3.1, displayHeight*1/1.5, displayWidth*1/3, displayHeight*1/9);  fill(51);
  } else {
   fill(#FF352E);
    rect(displayWidth*1/3.1, displayHeight*1/1.5, displayWidth*1/3, displayHeight*1/9);
    fill(255);
  }
    
    
  rect(displayWidth*1/3.1, displayHeight*1/1.5, displayWidth*1/3, displayHeight*1/9);
  rect(displayWidth*0.9/1, displayHeight*0/1, displayWidth*1/3, displayHeight*1/10);
  rect(displayWidth*1/3.1, displayHeight*1/40, displayWidth*1/3, displayHeight*1/10);
  rect(displayWidth*0.001/1, displayHeight*0/1, displayWidth*1/10, displayHeight*1/10);
  //rect(displayWidth*1/3.1, displayHeight*0, displayWidth*1/3, displayHeight*1/1);
  
}
  
