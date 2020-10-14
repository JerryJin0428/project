//Jerry Jin
//block 1-1b
//oct 7 2020

import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;

Minim minim;
AudioPlayer theme, coin, bump, gameover;

int mode;
final int INTRO =0;
final int GAME=1;
final int PAUSE=2;
final int GAMEOVER=3;
final int OPTIONS=4;

PImage UFO1, UFO2, UFO3, UFO_selected;

float x, y, d;
float vx, vy;
int score, lives, highscore;
float sliderY;

PFont Brighly;

void setup() {
  size(800, 800);
  mode = INTRO;
  textAlign(CENTER, CENTER);
  rectMode(CENTER);
  Brighly=createFont("Brightly Crush Shine.otf", 100);

  x=width/2;
  y=height/2;
  d=300;
  vx=random(-5, 5);
  vy=random(-5, 5);
  score=0;
  lives=3;
  sliderY=600;

  minim=new Minim(this);
  theme=minim.loadFile("theme.mp3");
  coin=minim.loadFile("coin.mp3");
  bump=minim.loadFile("bump.mp3");
  gameover=minim.loadFile("gameover.mp3");
  
  textFont(Brighly);
  
  highscore=0;
  
  UFO1=loadImage("UFO1");
  UFO2=loadImage("UFO2");
  UFO3=loadImage("UFO3");
  UFO_selected=UFO1;
}

void draw () {
  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else if (mode==OPTIONS) {
    optionsClicks();
  } else {
    println("Error:Mode = " + mode);
  }
}
void reset(){
  x=width/2;
  y=height/2;
  d=300;
  vx=random(-5, 5);
  vy=random(-5, 5);
  score=0;
  lives=3;
  sliderY=600;
}
