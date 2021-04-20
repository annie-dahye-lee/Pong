void tactileButton() {
  
}

void tactileText(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(red);
    strokeWeight(10);
  } else {
    fill(255);
    strokeWeight(0);
  }
}

void tactileRect(int x, int y, int w, int h) {
  if(mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(red);
  } else {
    noStroke();
    fill(150);
  }
}

void tactileRect2(int x, int y, int w, int h) {
  if(mouseX > x && mouseX < x + w && mouseY > y && mouseY < y + h) {
    fill(255);
    stroke(255);
  } else {
    noStroke();
    fill(150);
  }
}
