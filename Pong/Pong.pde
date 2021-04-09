// Pong!
// Annie Lee
// 1-4B
// 04/08/21 

// variables ======================================================

// mode framework
int mode;
final int INTRO    = 1;
final int GAME     = 2;
final int PAUSE    = 3;
final int GAMEOVER = 4;

// paddle 
float leftx, lefty, leftd, rightx, righty, rightd; 

// ball
float ballx, bally, balld, ballvx, ballvy;

// keyboard
boolean wkey, skey, upkey, downkey; // initial value is false

// fonts
PFont titleFont;
PFont gameFont;

// background
PImage background;

// variables end =================================================
void setup() {
  size(800, 800);
  mode = INTRO; 

  // initialize paddles
  // left side
  leftd = 70;
  leftx = 0;
  lefty = height/2;

  // right sides
  rightd = 70;
  rightx = width - rightd/2;
  righty = height/2;


  // initialize ball in center
  ballx = width/2;
  bally = height/2;
  balld = 50;

  //keys
  wkey = false;
  skey =  false;
  upkey =  false;
  downkey = false;

  // fonts
  titleFont = createFont("title font.ttf", 180);
  gameFont = createFont("game font.ttf", 10);

  // background
  background = loadImage("background.jpg");
} 
void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == GAME) {
    game();
  } else if (mode == PAUSE) {
    pause();
  } else if (mode == GAMEOVER) {
    gameover();
  } else {
    println("Mode error" + mode);
  }
}
