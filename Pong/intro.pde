void intro() {
  background(0);
  
  textAlign(CENTER, CENTER);
  textSize(100);
  fill(255);
  textFont(titleFont);
  text("PONG", 400, 200);
  
  textFont(gameFont);
  textSize(60);
  tactileText(300, 420, 180, 90);
  text("START", 400, 480);
  }


void introClicks() {
  if (mouseX > 300 && mouseX < 480 && mouseY > 420 && mouseY < 510) {
    mode = GAME;
  }
}
