PImage img;

void setup() {
  size(960, 672);
// Bild laden
  img = loadImage("trump.jpg");
  img.resize(width, height);
  frameRate(500);
}

void draw() {
  background(255);

  fill(0);
  noStroke();


  float tiles = random(200,2000)/10;
  float tileSize = width/tiles;

  translate(tileSize/2, tileSize/2);

  for (int x = 0; x < tiles; x++) {
    for (int y = 0; y < tiles; y++) {

      color c = img.get(int(x*tileSize), int(y*tileSize));
      float size = map(brightness(c), 0, 255,tileSize,0);


      ellipse(x*tileSize, y*tileSize, size, size);
    }
  }
  saveFrame("line-######.png");
}
