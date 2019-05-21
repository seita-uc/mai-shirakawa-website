PImage img;
PImage[] circularSmallImgs = new PImage[8];
PImage[] circularBigImgs = new PImage[8];
int randIndex1;
int randIndex2;
void setup(){
  size(displayWidth, 500);
  background(255);
  String imgPath = "images/main.jpg";
  img = loadImage(imgPath);
  img.resize(width, 0);
  for(int i = 0; i < 8; i++) {
      String circularImgPath = "images/circular_img_" + (i+1) + ".jpg";
      circularSmallImgs[i] = loadImage(circularImgPath);
      circularSmallImgs[i].resize(255, 255);
      circularBigImgs[i] = loadImage(circularImgPath);
      circularBigImgs[i].resize(315, 315);
  }
} 

void draw(){
  image(img, 0, 0);
  image(circularSmallImgs[randIndex1], 410, 203);
  image(circularBigImgs[randIndex2], 679, 145);
  if (random(100) > 97) {
      randIndex1 = int(random(circularSmallImgs.length-1));
      randIndex2 = int(random(circularBigImgs.length-1));
  }
}
