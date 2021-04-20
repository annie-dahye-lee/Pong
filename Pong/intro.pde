void intro() {
  intro.play();
  image(background, 0, 0, 800, 800);
  
  // title
  textAlign(CENTER, CENTER);
  textSize(100);
  fill(255);
  textFont(gameFont);
  text("PONG", 400, 200);
  
  // start
  fill(150);
  tactileRect(320, 350, 180, 80);
  rect(300, 350, 200, 80, 20);
  textSize(200);
  fill(0);
  textFont(gameFont, 50);
  textAlign(CENTER, CENTER);
  text("START", 405, 385);
  
  // options 
  fill(150);
  tactileRect(270, 450, 250, 80);
  rect(275, 450, 250, 80, 20);
  fill(0);
  textFont(gameFont, 50);
  textAlign(CENTER, CENTER);
  text("OPTIONS", 400, 480);
}

void introClicks() {
  if (mouseX > 320 && mouseX < 500 && mouseY > 350 && mouseY < 430) {
    mode = GAME;
    intro.pause();
    leftscore = 0;
    rightscore = 0;
    lefty = height/2;
    righty = height/2;
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }
  
  if (mouseX > 270 && mouseX < 520 && mouseY > 450 && mouseY < 530) {
    mode = OPTIONS;
  }
}
