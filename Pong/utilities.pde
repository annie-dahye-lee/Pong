void tactileButton() {
  
}

void tactileText(int x, int y, int w, int h) {
  if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
    fill(255,0,0);
    strokeWeight(10);
  } else {
    fill(255);
  }
}
