// Amatriain Lucia
// tp0 Comisión 1

size(800, 400);
PImage paisaje;
paisaje = loadImage("cielovioleta2.jpg");
image(paisaje, 0, 0, 400, 400);


noStroke();
fill(6, 15, 41);
rect(400, 0, 800, 100);
fill(90, 45, 86);
rect(400, 100, 800, 40);
fill(232, 77, 47);
rect(400, 135, 800, 45);
fill(243, 165, 66);
rect(400, 178, 800, 30);
fill(255);
circle(690, 202, 23);
fill(211, 86, 100);
rect(400, 208, 800, 30);


fill(40, 40, 84);
rect(400, 238, 800, 50);
triangle(400, 230, 550, 238, 400, 238);
quad(560, 238, 690, 230, 800, 238, 800, 250);
fill(23, 23, 66);
rect(400, 265, 800, 75);
quad(400, 265, 615, 240, 765, 300, 400, 285);
quad(500, 265, 690, 240, 800, 265, 800, 265);
fill(12, 5, 34);
rect(400, 320, 800, 120);
triangle(400, 275, 600, 320, 400, 320);


fill(4, 2, 16);
ellipseMode(CORNER);
ellipse(400, 290, 110, 50);
ellipseMode(CENTER);
ellipse(500, 320, 75, 20);
quad(400, 300, 540, 320, 755, 400, 400, 400);


rect(450, 185, 5, 200);

rect(410, 166, 3, 35);
rect(425, 180, 3, 38);
rect(480, 175, 3, 35);
rect(495, 180, 3, 22);

stroke(3);
strokeWeight(3);
line(411, 198, 425, 217);
line(425, 217, 450, 250);
line(480, 208, 452, 230);
line(495, 202, 480, 208);
