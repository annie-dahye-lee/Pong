void pause() {

  // resume
  fill(150);
  tactileRect(280, 350, 250, 80);
  noStroke();
  rect(280, 350, 250, 80, 20);
  textSize(200);
  fill(0);
  textFont(gameFont, 50);
  textAlign(CENTER, CENTER);
  text("RESUME", 405, 385);

  // exit 
  fill(150);
  noStroke();
  tactileRect(270, 450, 260, 80);
  rect(275, 450, 250, 80, 20);
  fill(0);
  textFont(gameFont, 50);
  text("EXIT", 400, 480);
}


void pauseClicks() {
  if (mouseX > 280 && mouseX < 630 && mouseY > 350 && mouseY < 430) {
    mode = GAME;
  }

  if (mouseX > 270 && mouseX < 530 && mouseY > 450 && mouseY < 530) {
    mode = INTRO;
    intro.rewind();
  }
}
