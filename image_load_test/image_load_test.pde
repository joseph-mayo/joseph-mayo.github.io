int numFrames = 22;
int currentFrame = 0;
PImage[] images = new PImage[numFrames];
    
void setup() {
  size(599, 331);
  frameRate(40);

  for (int i = 1; i < numFrames; i++) {
  String pic = "joseph-mayo.github.io/image_load_test/gif" + nf(i, 1) + ".png";
  images[i] = loadImage(pic);
  }
} 
 
void draw() { 
  background(0);
  currentFrame = (currentFrame+1) % 21;
  for (int i = 1; i < 22; i++) { 
    image(images[currentFrame+1], 0,0,images[i].width/4, images[i].height/4);
  }
}
