PImage MonaLisa;
int imageArrayLength;

void setup() {
  size(500,500);
  background(255);
  
  MonaLisa = loadImage("../Mona_Lisa_500.jpg");
  imageArrayLength = MonaLisa.pixels.length;
  noStroke();
//  noSmooth();
background(0);
//rectMode(CENTER);
}

void draw() {
  
  for (int i = 0; i < 1000; i++) {
  
  int thisPixel = floor(random(imageArrayLength));
  color thisPixelColor;
//  println(thisPixel);
  thisPixelColor = MonaLisa.pixels[thisPixel];
  fill(red(thisPixelColor), green(thisPixelColor), blue(thisPixelColor), 90);
  //rect(100,100,50,50);
  //println("point should be at " + (thisPixel % 500) + " and " + (thisPixel / 500));
  ellipse(thisPixel % 500, thisPixel / 500, 1+ mouseX/5, 1+ mouseY/5);
//  point(thisPixel % 500, thisPixel / 500);

  }

}