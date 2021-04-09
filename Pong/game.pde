void game() {
  image(background, width, height);

  paddles();
  ball();
}

void paddles() {
  // left paddle
  fill(255);
  rect(leftx, lefty, leftd - leftd/2, leftd);

  // right paddle
  rect(rightx, righty, rightd - rightd/2, rightd);

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
