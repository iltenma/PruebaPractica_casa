PImage a;
PFont font;
float rojo, verde, azul;
color capturaPixel, otroPixel;


void setup() {
  size(800, 600);
  a=loadImage("brill.jpg");
  font = loadFont("Candara-48.vlw");
  textFont(font);
  smooth();
  strokeWeight(2);
  fill(255);
}

void draw() {
  background (0);
  image (a, 150, 150);

  if (keyPressed == true) {  

    if (key == CODED) {

      if (keyCode == UP) {
        noFill ();
        stroke (255);
        rect (300, 50, 200, 500);
        
      } else if (keyCode == DOWN) {
        noFill ();
        stroke (255);
        ellipse (400, 300, 750, 200);
        
      } else if (keyCode == RIGHT) {
        noFill ();
        stroke (255);
        triangle (400, 50, 110, 520, 690, 520);
      } else if (keyCode == LEFT) {
        noFill ();
        stroke (255);
        triangle (110, 50, 690, 50, 400, 520);
      }

      for (int i= 150; i<650; i ++) {
        for (int j= 150; j<450; j++) {
          capturaPixel = get ( i, j);
          azul = blue (capturaPixel);
          
          if (mouseX >= 150 && mouseX <=150 && mouseY >= 150+500 && mouseY >= 150+300) {
            rojo = map (mouseX, 150, 316, red(capturaPixel), 255);
          } else {
            rojo = map (mouseX, 150, 0, red(capturaPixel), 0);
          }
          
          if (mouseX >= 150 && mouseX <=150 && mouseY >= 150+500 && mouseY >= 150+300) {
            verde = map (mouseY, 316, 482, green(capturaPixel), 255);
          } 
          else {
            verde = map (mouseY, 150, 0, green(capturaPixel), 0);
          }
          
          if (mouseX >= 150 && mouseX <=150 && mouseY >= 150+500 && mouseY >= 150+300) {
            azul = map (mouseX, 482, 450, blue(capturaPixel), 255);
          } 
          else {
            azul = map (mouseY, 150, 0, blue(capturaPixel), 0);
          }
          
          otroPixel = color (rojo, verde, azul);
          set (i, j, otroPixel);
        }
      }
    }
  }
}