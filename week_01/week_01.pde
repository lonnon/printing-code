import processing.pdf.*;
boolean save_pdf = false;

void setup() {
  size(640, 640);
}

void draw() {
  if (save_pdf) {
    beginRecord(PDF, "pdf/week_01_####.pdf");
  }
  background(0);
  rect(-1, 416, 641, 224);
  ellipse(429, 522, 309, 136);
  triangle(66, 512, 409, 512, 372, 350);
  if (save_pdf) {
    endRecord();
    save_pdf = false;
  }
}

void keyPressed() {
  if (key == 'p') {
    save_pdf = true;
  }
  if (key == 's') {
    saveFrame("images/week_01_####.png");
  }
}

