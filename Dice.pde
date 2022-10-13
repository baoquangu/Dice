Die bob;
void setup(){
  size(500,500);
  noLoop();
}

void draw(){
  background(200);
  int sum = 0;
  for (int y = 45; y < 400; y += 150){
    for (int x = 15; x <= 475; x += 100){
      bob = new Die(x,y);
      bob.show();
      bob.roll();
      sum = bob.num + sum;
    }
  }
  text("Click Me!!!", 230, 440);
}

void mousePressed(){
  redraw();
}

class Die{
 
  int myX;
  int myY;
  int num;
  Die (int x, int y){
    myX = x;
    myY = y;
    num = (int)(Math.random()*6)+1;

  }
 
  void roll(){
    fill(0,0,0);
    if (num == 1){
      ellipse(myX + 35, myY + 35, 10, 10);
    }
    else if (num == 2){
      ellipse(myX + 18, myY + 18, 10, 10);
      ellipse(myX + 52, myY + 52, 10, 10);
    }
    else if (num == 3){
      ellipse(myX + 18, myY + 18, 10, 10);
      ellipse(myX + 52, myY + 52, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
    }
    else if (num == 4){
      ellipse(myX + 18, myY + 18, 10, 10);
      ellipse(myX + 52, myY + 52, 10, 10);
      ellipse(myX + 18, myY + 52, 10, 10);
      ellipse(myX + 52, myY + 18, 10, 10);
    }
    else if (num == 5){
      ellipse(myX + 18, myY + 18, 10, 10);
      ellipse(myX + 52, myY + 52, 10, 10);
      ellipse(myX + 18, myY + 52, 10, 10);
      ellipse(myX + 52, myY + 18, 10, 10);
      ellipse(myX + 35, myY + 35, 10, 10);
    }
    else{
      ellipse(myX + 15, myY + 15, 10, 10);
      ellipse(myX + 55, myY + 55, 10, 10);
      ellipse(myX + 15, myY + 55, 10, 10);
      ellipse(myX + 55, myY + 15, 10, 10);
      ellipse(myX + 15, myY + 35, 10, 10);
      ellipse(myX + 55, myY + 35, 10, 10);
    }
  }
 
  void show(){
    fill((int)(Math.random()*365),(int)(Math.random()*365),(int)(Math.random()*365));
    rect(myX, myY, 70, 70);
  }
}
