void options() {
  image(background, 0, 0, 800, 800);

  // player mode buttons
  noStroke();
  tactileRect(60, 350, 300, 100);
  rect(60, 350, 300, 100, 50);
  fill(0);
  textSize(50);
  text("1 PLAYER", 210, 390);

  tactileRect(440, 350, 320, 100);
  rect(440, 350, 320, 100, 50);
  fill(0);
  textSize(50);
  text("2 PLAYERS", 600, 390);

  // display selected player mode
  fill(250);
  textSize(60);
  text("PLAYER MODE : ", 400, 150);

  if (AI == true) {
    fill(250);
    textSize(60);
    text("1 PLAYER", 400, 220);
  }
  if (AI == false) {
    fill(250);
    textSize(60);
    text("2 PLAYERS", 400, 220);
  }

  //save button
  noStroke();
  fill(250);
  tactileRect(280, 550, 250, 100);
  rect(280, 550, 250, 100, 50);
  fill(0);
  textSize(50);
  text("SAVE", 405, 590);
}

void optionsClicks() {
  if (mouseX > 60 && mouseX < 360 && mouseY > 350 && mouseY < 450) {
    // text("1 PLAYER", 400, 220);
    AI = true;
  }

  if (mouseX > 450 && mouseX < 750 && mouseY > 350 && mouseY < 450) {
    //text("2 PLAYERS", 400, 220);
    AI = false;
  }
  
  //280, 550, 250, 100
  if (mouseX > 280 && mouseX < 530 && mouseY > 550 && mouseY < 650) {
    mode = INTRO;
    timer = 100;
    leftscore = 0;
    rightscore = 0;
  }
}
