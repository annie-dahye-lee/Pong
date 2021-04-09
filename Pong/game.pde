void game() {
  background(0);

  paddles();
  ball();
}

void paddles() {
  // left paddle
  fill(255);
  circle(leftx, lefty, leftd);

  // right paddle
  circle(rightx, righty, rightd);

  // move paddles
  if (wkey == true) lefty -= 5;
  if (skey == true) lefty += 5;
  
  if (upkey == true) righty -= 5;
  if (downkey == true) righty += 5;
}

void ball() {
  fill(255);
  circle(ballx, bally, balld);
}


void gameClicks() {
}
