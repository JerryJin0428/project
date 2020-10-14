void pause() {
  theme.pause();
  fill(0);
  textSize(100);
  text("PAUSE",400,400);
}

void pauseClicks() {
  if (mouseX<120 && mouseX>30 && mouseY<120&&mouseY>30) {
    mode =GAME;
    theme.play();
  }
}
