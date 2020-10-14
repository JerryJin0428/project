void game() {
  background(0, 255, 0);

  fill(255);
  stroke(0);
  rect(50, 50, 50, 50, 10);

  fill(0);
  textSize(50);
  text("score:"+score, width/2, 50);
  text("lives:"+lives, width/2, 100);

  fill(255);
  stroke(0);
  strokeWeight(5);
  circle(x, y, d);

  x=x+vx;
  y=y+vy;


  if (x < d/2 || x> width-d/2) {
    vx=vx*-1;
  }
  if (y < d/2 || y> width-d/2) { 
    vy=vy*-1;
  }
}

void gameClicks() {
  if (dist(mouseX, mouseY, x, y)<d/2) {
    score=score+1;
    vx=vx*1.01;
    vy=vy*1.01;
    coin.rewind();
    coin.play();
  } else if (mouseX<120 && mouseX>30 && mouseY<120&&mouseY>30) {
    mode =PAUSE;
  } else {
    lives=lives-1;
    bump.rewind();
    bump.play();
    if (lives ==0) mode=GAMEOVER;
  }
}
