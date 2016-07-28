float x;
float y;
float easing = 0.05;
int z = 20;
boolean drawT = false;

void setup() {
  size(640, 360);   
  strokeWeight(4);
  noCursor();
}

void draw() { 
  background(51);
   background(gray);
  float targetX = mouseX;
  float dx = targetX - x;
  x += dx * easing;
  
  float targetY = mouseY;
  float dy = targetY - y;
  y += dy * easing;
  
  ellipse(x, y, 66, 66);
  ellipse(mouseX, 16, 33, 33);   // Top circle
  ellipse(mouseX/2, 50, 33, 33); // Middle circle
  ellipse(mouseX*2, 84, 33, 33); // Bottom circle
  
   if (keyPressed == true) {
    line(150, 150, 80, 80);
  } else { 
    rect(140, 140, 120, 120);
  }
  line(140,140, 90, 50);
  if (key == CODED) { 
    if (keyCode == UP) {
      y = 20;
    } else if (keyCode == DOWN) {
      y = 50;
    }
  } else {
    y = 35;
  }
  rect(150, y, 50, 30);
  
  if (drawT == true) { 
    rect(20, 20, 60, 20);
    rect(39, 40, 22, 45);
  }
}

void keyPressed() {
  if ((key == 'T') || (key == 't')) {
    drawT = true;
  }
  
  if (mousePressed == true) {
    cursor();
  }
}

void keyReleased() {
  drawT = false;
  
  if (mouseButton == LEFT) {
    fill(150); // Black
  } else if (mouseButton == RIGHT) {
    fill(255); // White
  } else { 
    fill(126); // Gray
  }
  rect(25, 25, 50, 50);
  
}
  
int gray = 0;

void mousePressed() {
  gray += 20;
}

void mouseReleased() {
  gray += 20;
}