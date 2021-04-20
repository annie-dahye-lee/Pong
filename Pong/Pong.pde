// Pong!
// Annie Lee
// 1-4B
// 04/08/21 

// variables ======================================================

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

// mode framework
int mode;
final int INTRO    = 1;
final int OPTIONS  = 2;
final int GAME     = 3;
final int PAUSE    = 4;
final int GAMEOVER = 5;

// paddles 
float leftx, lefty, leftd, rightx, righty, rightd; 

// ball
float ballx, bally, balld, ballvx, ballvy;

// scoring
int leftscore, rightscore, timer;

// bools
boolean AI;
boolean optionsMode;

// keyboard
boolean wkey, skey, upkey, downkey; // initial value is false

// fonts
PFont gameFont;

// colour
color red = #FF0000;

// background
PImage background;

// sound fx
Minim minim;
AudioPlayer left, right, score, intro, wall, gameover;

// variables end =================================================
void setup() {
  size(800, 800);
  mode = INTRO; 

  // initialize paddles
  // left side
  leftd = 200;
  leftx = 0;
  lefty = height/2;

  // right sides
  rightd = 200;
  rightx = width;
  righty = height/2;

  // initialize ball in center
  ballx = width/2;
  bally = height/2;
  balld = 80;

  ballvx = random(-9, 9);
  ballvy = random(-9, 9);

  // score
  leftscore = 0;
  rightscore = 0;
  timer = 100;

  // AI player
  AI = false;

  //keys
  wkey = false;
  skey =  false;
  upkey =  false;
  downkey = false;

  // fonts
  gameFont = createFont("title font.ttf", 180);

  // background
  background = loadImage("background.jpg");
  
  // sound fx
  minim = new Minim(this);
  score = minim.loadFile("score.wav");
  intro = minim.loadFile("intro.wav");
  right = minim.loadFile("rightpaddle.wav");
  left = minim.loadFile("leftpaddle.wav");
  gameover = minim.loadFile("gameover.mov");
  wall = minim.loadFile("wall.wav");
} 
void draw() {
  if (mode == INTRO) {
    intro();
  } else if (mode == OPTIONS) {
    options();
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
