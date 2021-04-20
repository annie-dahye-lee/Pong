void gameover() {
  gameover.play();
  background(255);
  tactileRect(250, 520, 300, 70);
  noStroke();
  rect(250, 520, 300, 70, 80);
  fill(255);
  textSize(45);
  text("TRY AGAIN", 400, 550);

  if (leftscore >= 3) {
    textFont(gameFont, 50);
    textSize(100);
    fill(0);
    text("LEFT WINS!", width/2, height/2);
  }

  if (rightscore >= 3) {
    textFont(gameFont, 50);
    textSize(100);
    fill(0);
    text("RIGHT WINS!", width/2, height/2);
  }
}

void gameoverClicks() {
  if (mouseX > 250 && mouseX < 550 && mouseY > 520 && mouseY < 590) {
    mode = INTRO;
    gameover.pause();
    gameover.rewind();
    intro.rewind();
  }
}
