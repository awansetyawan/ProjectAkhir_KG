class Pohon {
  void drawTreePalm1(){
  
  // Pohon 1
  // Batang Pohon
  stroke(131, 86, 27);
  strokeWeight(10);
  line(950, 550, 950, 580);
  strokeWeight(20);
  line(950, 580, 950, 610);
  stroke(177, 120, 57);
  strokeWeight(30);
  line(950, 610, 950, 640);
  strokeWeight(40);
  line(950, 640, 950, 670);
  strokeWeight(50);
  line(950, 670, 950, 700);
  
  // Buah
  stroke(108, 52, 40);  
  strokeWeight(25);
  point(955, 565);
  strokeWeight(20);
  point(940, 560);

  // Daun
  noStroke();
  fill(115, 211, 0); // Hijau muda
  
  pushMatrix();
  translate(950, 550); // Pusat daun
  rotate(radians(80)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(950, 550); // Pusat daun
  rotate(radians(40)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();

  pushMatrix();
  translate(950, 550); // Pusat daun
  rotate(radians(250)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(950, 550); // Pusat daun
  rotate(radians(290)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  fill(81, 185, 4);
  
  pushMatrix();
  translate(950, 550); // Pusat daun
  rotate(radians(120)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(950, 550); // Pusat daun
  rotate(radians(200)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  }
  
 void drawTreePalm2(){
  // Pohon 2
  // Batang Pohon
  stroke(131, 86, 27);
  strokeWeight(20);
  line(300, 630, 300, 670);
  strokeWeight(30);
  line(300, 670, 300, 710);
  stroke(177, 120, 57);
  strokeWeight(40);
  line(300, 710, 300, 750);
  strokeWeight(50);
  line(300, 750, 300, 790);
  strokeWeight(60);
  line(300, 790, 300, 830);
  strokeWeight(70);
  line(300, 830, 300, 870);
  
  // Buah
  stroke(108, 52, 40); 
  strokeWeight(40);
  point(310, 650);
  strokeWeight(30);
  point(290, 645);

  // Daun
  noStroke();
  fill(115, 211, 0); // Hijau muda
  
  pushMatrix();
  translate(300, 630); // Pusat daun
  scale(1.5); // Memperbesar daun
  rotate(radians(80)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(300, 630); // Pusat daun
  scale(1.5); // Memperbesar daun
  rotate(radians(40)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();

  pushMatrix();
  translate(300, 630); // Pusat daun
  scale(1.5); // Memperbesar daun
  rotate(radians(250)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(300, 630); // Pusat daun
  scale(1.5); // Memperbesar daun
  rotate(radians(290)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(300, 630); // Pusat daun
  scale(1.0); // Memperbesar daun
  rotate(radians(330)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(300, 630); // Pusat daun
  scale(0.8); // Memperbesar daun
  rotate(radians(0)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  fill(81, 185, 4);
  
  pushMatrix();
  translate(300, 630); // Pusat daun
  scale(1.5); // Memperbesar daun
  rotate(radians(120)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(300, 630); // Pusat daun
  scale(1.5); // Memperbesar daun
  rotate(radians(200)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
 }
 
 void drawTreePalm3(){
  // Pohon 3
  // Batang Pohon
  stroke(131, 86, 27);
  strokeWeight(30);
  line(1220, 300, 1220, 350);
  strokeWeight(40);
  line(1220, 350, 1220, 400);
  stroke(177, 120, 57);
  strokeWeight(50);
  line(1220, 400, 1220, 450);
  strokeWeight(60);
  line(1220, 450, 1220, 500);
  strokeWeight(70);
  line(1220, 500, 1220, 550);
  strokeWeight(80);
  line(1220, 550, 1220, 600);
  strokeWeight(90);
  line(1220, 600, 1220, 650);
  strokeWeight(100);
  line(1220, 650, 1220, 700);
  
  // Buah
  stroke(108, 52, 40); 
  strokeWeight(45);
  point(1230, 320);
  strokeWeight(35);
  point(1205, 330);

  // Daun
  noStroke();
  fill(115, 211, 0); // Hijau muda
  
  pushMatrix();
  translate(1220, 300); // Pusat daun
  scale(2.0); // Memperbesar daun
  rotate(radians(80)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(1220, 300); // Pusat daun
  scale(2.0); // Memperbesar daun
  rotate(radians(40)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();

  pushMatrix();
  translate(1220, 300); // Pusat daun
  scale(2.0); // Memperbesar daun
  rotate(radians(250)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(1220, 300); // Pusat daun
  scale(2.0); // Memperbesar daun
  rotate(radians(290)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(1220, 300); // Pusat daun
  scale(1.0); // Memperbesar daun
  rotate(radians(330)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(1220, 300); // Pusat daun
  scale(0.8); // Memperbesar daun
  rotate(radians(0)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  fill(81, 185, 4);
  
  pushMatrix();
  translate(1220, 300); // Pusat daun
  scale(1.5); // Memperbesar daun
  rotate(radians(120)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
  
  pushMatrix();
  translate(1220, 300); // Pusat daun
  scale(1.6); // Memperbesar daun
  rotate(radians(200)); // Mengatur rotasi daun
  beginShape();
  vertex(0, 0);
  bezierVertex(10, -30, 20, -60, 0, -90);
  bezierVertex(-20, -60, -10, -30, 0, 0);
  endShape(CLOSE);
  popMatrix();
}
}
