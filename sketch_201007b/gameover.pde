void gameover() {
  background(255, 0, 0);
  text("GAME OVER", 400, 300,100);
  if(score >highscore){
    highscore=score;
  }
  text("High Score: " + highscore,400,500,80);
  theme.pause();
  gameover.play();
}

void gameoverClicks() {
  reset();
  mode=INTRO;
  reset();
  theme.rewind();
}
