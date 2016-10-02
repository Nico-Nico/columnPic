PImage img;
int horisontalBlocks = 250;
int verticalBlocks = 100;

void setting() {
}

void setup() {
  size(1600, 1056);
  img = loadImage("bwportraits_cover.jpeg");
  int hBlockSize = width/horisontalBlocks;
  int vBlockSize= height/verticalBlocks;
  
  noStroke();
  image(img, 0, 0);
}

void draw(){
  int hBlockSize = int(width/horisontalBlocks);
  int vBlockSize = int(width/verticalBlocks);
  for (int i=0; i<=width; i+=hBlockSize){
    for (int j=0; j<= height; j+=vBlockSize){
      color circleColor = img.get(i, height/2);
      fill(circleColor, 128);
      rect(i, j, i+hBlockSize, j+vBlockSize);
    }
  }
  
}

void mouseClicked(){
  int clickX = mouseX;
  int clickY = mouseY;
  color barColor = img.get(clickX, clickY);
}