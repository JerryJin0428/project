void intro(){
  theme.play();
  background(255,255,0);
  fill(0);
  textSize(72);
  text("CLICKER GAME",400,350);
  if(mouseX>100&&mouseX<300&&mouseY>550&&mouseY<650){
    fill(200);
  }else{
    strokeWeight(1);
    fill(255);
  }
  strokeWeight(5);
  rect(200,600,200,100);
  fill(0);
  textSize(36);
  text("start",200,600);
  
  fill(255);
  rect(600,600,200,100);
  fill(0);
  text("options",600,600);
}

void introClicks(){
  if(mouseX>100&&mouseX<300&&mouseY>500&&mouseY<600){
  mode = GAME;
  reset();
  }
}
