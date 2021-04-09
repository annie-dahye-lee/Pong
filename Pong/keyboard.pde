void keyPressed() {
  // single quotes for key char variable 

  // left paddle
  if (key == 'w' || key == 'W') wkey = true;
  if (key == 's' || key == 'S') skey = true;

  // right paddle
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
} 

void keyReleased() {
  // when key is released

  // left paddle
  if (key == 'w' || key == 'W') wkey = false;
  if (key == 's' || key == 'S') skey = false;

  // right paddle
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
} 
