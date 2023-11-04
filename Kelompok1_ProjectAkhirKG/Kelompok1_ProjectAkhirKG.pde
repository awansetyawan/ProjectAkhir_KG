//import Piramid;

int numStars = 80; // Jumlah Bintang
int[] starX = new int[numStars];
int[] starY = new int[numStars];

boolean Suasana = false;

float MoonX = 600; // Koordinat awal X bumi
float MoonSpeed = 1; // Kecepatan gerak bumi

float sunX = 700 ;    // Koordinat matahari
float sunY = height;
float cloudX1 = 600;  // Koordinat awan
float cloudX2 = 600;
float cloudSpeed1 = 1;  // Kecepatan pergerakan awan
float cloudSpeed2 = 1;

color skyColor1 =  color(255,102,0);
color skyColor2 = color(255,214,0);

float x;
float y;
int x1 = 0;

boolean alir = false;

// Fungsi mouseClicked untuk mematikan dan menghidupan scaling
void mouseClicked(){
  if (!Suasana) {
    Suasana = true;
  } else {
    Suasana = false;
  }
}

void setup(){
  size(1500,900,P3D);
  
  smooth(); // Memperhalus tepi gambar 
  
  hint(DISABLE_OPTIMIZED_STROKE); // Membuat anti aliasing
  
  generateRandomStars(); // Memanggil fungsi membuat bintang
}

void draw(){
  if(!Suasana){
    Malam();
  }else{
    Sore();
  }
  
  pushMatrix();
  fill(#CA965C);
  translate(0,0,-200);
  rect(-200,400,2000,800);
  arc(1000,400,2500,50,PI,TWO_PI);

  
  //square(1150,400,200);
  fill(#DFA878);
  arc(600,900,2500,300,PI,TWO_PI);
  //fill(0);
 
  quad(2000,400,2000,900,900,900,1000,900);

  
  square(-200,900,2000);
  popMatrix();
 
  

  piramid(680,300,1,2.1,-2.5);
  piramid(350,310,0.8,2.3,-2);
  piramid(100,350,0.5,2.3,-2);
  //piramid(180,500,0.3,-3,4);
  fill(0);
  
  sungai();
  
  drawTreePalm();
}

void generateRandomStars() {
  // Perulangan for untuk memmbuat posisi bintang
  for (int i = 0; i < numStars; i++) {
    starX[i] = int(random(width));
    starY[i] = int(random(300));
  }
}

void drawStars() {
  // Perulangan for untuk menggambar bintang sesuai dengan posisi yang telah ditentukan
  for (int i = 0; i < numStars; i++) {
    float starSize = random(1, 4); // Ukuran random bintang
    fill(205, 245, 253); // Warna Kuning
    noStroke();
    ellipse(starX[i], starY[i], starSize, starSize); // Menggambar bintang dengan ukuran yang berubah
  }
}

void drawTreePalm(){
  
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

void drawCloud(float x, float y) {
  // Kerangka Awan
  fill(255);
  noStroke();
  ellipse(x, y, 100, 50);
  ellipse(x + 50, y, 100, 50);
  ellipse(x + 100, y, 100, 50);

  // Detail Awan
  circle(x - 30, y - 20, 60);
  circle(x + 20, y - 20, 60);
  circle(x + 70, y - 20, 60);
  circle(x + 120, y - 20, 60);

  circle(x - 50, y, 60);
  circle(x - 30, y + 20, 60);
  circle(x + 20, y + 20, 60);
  circle(x + 70, y + 20, 60);
  circle(x + 120, y + 20, 60);
  circle(x + 140, y, 60);
}

void Malam(){
 background(19, 0, 90); 
 
 drawStars();
 
 drawBulan();
}

void Sore(){
  float inter = map(sunY, height, 0, 0, 1);
  color currentColor = lerpColor(skyColor1, skyColor2, inter);
  background(currentColor);

  drawSun();
  movingCloud();
}

void drawSun(){
  fill(255, 165, 0);  // Warna oren
  noStroke();
  pushMatrix();
  translate(sunX, sunY, -300);
  circle(0, 0, 200);
  popMatrix();
  
  // Pergerakan matahari ke atas
  sunY += 1;
  
  // Jika matahari berada di atas layar, reset posisinya
  if (sunY > height - 100) {
    sunY = -300;
  }
}

void movingCloud(){
  fill(255);  // Warna putih
  noStroke();
  drawCloud(cloudX1, 100);
  
  // Awan 2
  fill(255);  // Warna putih
  noStroke();
  drawCloud(cloudX2, 150);
  
  // Pergerakan awan
  cloudX1 -= cloudSpeed1;
  
  // Jika awan keluar dari layar, reset posisinya
  if (cloudX1 < -180) {
    cloudX1 = width + 150;
  }
  
   // Pergerakan awan
  cloudX2 += cloudSpeed2;
  
  // Jika awan keluar dari layar, reset posisinya
  if (cloudX2 > width + 100) {
    cloudX2 = -200;
  }
}

void drawBulan(){
  // Menggerakkan bumi ke kiri dan ke kanan
  MoonX += MoonSpeed;
  
  // Jika bumi mencapai batas kiri atau kanan layar, balik arah geraknya
  if (MoonX < 100 || MoonX > width - 100) {
    MoonSpeed *= -1;
  }
  
  // Push untuk awal objek bulan
  pushMatrix(); // Simpan transformasi
  
  // Mengatur posisi bulan agar berpindah berdasarkan nilaiXBulan
  translate(MoonX, 0);
  
  // Bulan
  stroke(231, 226, 207); // Warna Cream
  strokeWeight(1);
  fill(231, 226, 207); // Warna Cream
  circle(0, 160, 120); // Posisi bulan diubah menjadi (0, 160)
  
  // Bintik Bulan (posisinya juga disesuaikan)
  stroke(218, 210, 191); // Warna Cream Gelap
  strokeWeight(1);
  fill(218, 210, 191); // Warna Cream Gelap
  circle(45, 160, 20);
  circle(30, 180, 15);
  circle(-30, 130, 15);
  circle(-20, 180, 30);
  circle(0, 150, 10);
  circle(20, 130, 15);
  noStroke();
  
  // Pop untuk akhir objek bulan
  popMatrix(); // Hapus transformasi
}


void piramid(float x, float y, float skala, float rotateX, float rotateZ ){
  pushMatrix();
  translate(x, y, 0);
  //stroke(255);
  rotateX(PI/rotateX);
  noStroke();
  rotateZ(PI/rotateZ);
  scale(skala);
  fill(0);

   
  beginShape();
  //lights();
  fill(255,0,0);
  vertex(-150, -150, -150);
  vertex( 150, -150, -150);
  vertex(   0,    0,  150);
  endShape();
  fill(#BF9474); // green
  beginShape();
  //lights();
  
  vertex( 150, -150, -150);
  vertex( 150,  150, -150);
  vertex(   0,    0,  150);
  endShape();
  
  beginShape();
  fill(#BF9474);
  lights();
  
  vertex( 150, 150, -150);
  vertex(-150, 150, -150);
  vertex(   0,   0,  150);
  endShape();
  
  //pushMatrix();
  beginShape();
  noLights();
  fill(#BF9474);
  vertex(-150,  150, -150);
  vertex(-150, -150, -150);
  vertex(   0,    0,  150);
  endShape();
  popMatrix();
  //triangle(0,300,30,300,175,100);

}

void sungai(){
  pushMatrix();
  strokeWeight(3);
  if(Suasana == false){
       stroke(#3D76B2);
       fill(#2661C4);
    }
    else{ 
      stroke(#57C3F7);
    fill(#4387CE);}
  translate(0,480);
  beginShape();
    curveVertex(0,20);
    curveVertex(0,20);
    curveVertex(300,50);
    curveVertex(600,220);
    curveVertex(1500,300);
    curveVertex(1500,450);
    curveVertex(200,300);
    curveVertex(150,80);
    curveVertex(0,25);
    curveVertex(0,25);
    
  endShape();
  
  aliran(1000,340);
  aliran(800,300);
  aliran(1200,300);
  popMatrix();
  batu(0.4, 20,550);
  batu(0.7, 1020,630);
  batu(0.8, 80,750);


}

void aliran(int x, int y){

  pushMatrix();
    translate(x,y);
  beginShape();
    noFill();
    if(Suasana == false){
       stroke(#9ABFF2);
    }
    else{ stroke(#EBFA8D);}
    
    //if(alir == false){
    curveVertex(0,10);
    curveVertex(0,10);
    curveVertex(10,0);
    curveVertex(20,10);
    curveVertex(30,0);
    curveVertex(40,10);
    curveVertex(50,0);
    curveVertex(60,10);
    curveVertex(70,0);
    curveVertex(80,10);
    curveVertex(90,0);
    curveVertex(100,10);
    curveVertex(100,10);
  //  alir = true;
  //}
    
    //else{
    //  curveVertex(0,0);
    //  curveVertex(0,0);
    //  curveVertex(10,10);
    //  curveVertex(20,0);
    //  curveVertex(30,10);
    //  curveVertex(40,0);
    //  curveVertex(50,10);
    //  curveVertex(60,0);
    //  curveVertex(70,10);
    //  curveVertex(80,0);
    //  curveVertex(90,10);
    //  curveVertex(100,0);
    //  curveVertex(100,0);
    //  alir = false;
    //}
  endShape();
  popMatrix();
}


void batu(float skala, float x, float y){
  pushMatrix();
  translate(x,y);
  scale(skala);
  stroke(#929380);
  fill(#88897F);
  beginShape();
  vertex(0,0);
  vertex(100,0);
  //vertex(50,50);
  vertex(0,0);
  vertex(0,100);
  vertex(50,140);
  vertex(150,120);
  vertex(100,0);
  endShape();
  popMatrix();
  
  pushMatrix();
  translate(x,y);
  scale(skala);
  beginShape();
  stroke(#6C6C6A);
  fill(#6C6C6A);
  vertex(0,0);
  vertex(100,0);
  vertex(50,50);
  vertex(0,0);
  endShape();
  popMatrix();
}

void delay(int milliseconds) {
  try {
    Thread.sleep(milliseconds);
  } catch (InterruptedException e) {
    e.printStackTrace();
  }
}
