void game() {
  intro.pause();
  gameover.pause();
  gameover.rewind();
  background(#240047);

  // middle dotted line
  for (int i = 10; i < height; i += 10) {
    stroke(#240047);
    fill(255);
    ellipse (width/2, i, 10, 10);
  }

  paddles();
  ball();
  score();
  buttons();

  timer -= 1;
}

void paddles() {
  // left paddle
  noStroke();
  fill(255);
  circle(leftx, lefty, leftd);

  // right paddle
  noStroke();
  fill(255);
  circle(rightx, righty, rightd);

  // move paddles
  if (wkey == true) lefty -= 6;
  if (skey == true) lefty += 6;

  if (upkey == true) righty -= 6;
  if (downkey == true) righty += 6;

  // left paddle bounce
  if (dist(leftx, lefty, ballx, bally) <= balld/2 + leftd/2) {
    ballvx = (ballx - leftx)/10;
    ballvy = (bally - lefty)/10;
    left.rewind();
    left.play();
  }

  // right paddle bounce
  if (dist(rightx, righty, ballx, bally) <= balld/2 + rightd/2) {
    ballvx = (ballx - rightx)/10;
    ballvy = (bally - righty)/10;
    right.rewind();
    right.play();
  }
  // out of bounds
  if (lefty < 0) {
    lefty = 0;
  }
  if (lefty > height-0) {
    lefty = height-0;
  }
  if (righty < 0) {
    righty = 0;
  }
  if (righty > height) {
    righty = height;
  }
}

void ball() {
  fill(#40FFDC);
  circle(ballx, bally, balld);

  // movement
  if (timer <= 0) {
    ballx = ballx + ballvx;
    bally = bally + ballvy;
  }

  // out of bounds
  if (bally < 0 || bally > height) {
    wall.rewind();
    wall.play();
    wall.rewind();
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }

  // bounce off edges
  if (bally < balld/2 || bally > height-balld/2) {
    ballvy = ballvy * -1;
    wall.rewind();
    wall.play();
    wall.rewind();
  }
}

void score() {
  // show score
  textAlign(CENTER, CENTER);
  fill(255);
  textFont(gameFont);
  textSize(200);
  text(leftscore, 200, 100);
  text(rightscore, 600, 100);

  // add scores
  if (ballx <= 0) {
    rightscore++;
    score.rewind();
    score.play();
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }

  if (ballx >= width) {
    leftscore++;
    score.rewind();
    score.play();
    ballx = width/2;
    bally = height/2;
    timer = 100;
  }

  //gameover
  if (leftscore >= 3 || rightscore >= 3) {
    mode = GAMEOVER;
  }

  //AI player mode
  if (AI == true) {
    if (ballx >= 400) {
      if (bally < righty) {
        righty = righty - 7;
      }
      if (bally > righty) {
        righty = righty + 7;
      }
    }
  }
}

void buttons() {
  fill(150);
  stroke(0);
  strokeWeight(1);
  tactileRect2(760, 10, 30, 30);
  rect(760, 10, 30, 30);
  stroke(0);
  strokeWeight(3);
  fill(0);
  line(771, 17, 771, 33);
  line(779, 17, 779, 33);
}


void gameClicks() {
  if (mouseX > 760 && mouseX < 790 && mouseY > 10 && mouseY < 40) {
    mode = PAUSE;
  }
}
