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
  fill(#CEAD51);
  translate(0,0,-200);
  rect(-200,400,2000,800);
  popMatrix();

  piramid(800,350,1.4,2,-3);
    
  piramid(430,330,1,2.2,-3);
  
  piramid(150,310,0.7,2.4,-3);
  
  sungai();
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

void drawCloud(float x, float y) {
  // Kerangka Awan
  fill(255);
  noStroke();
  ellipse(x, y, 100, 50);
  ellipse(x + 50, y, 100, 50);
  ellipse(x + 100, y, 100, 50);

  // Detail Awan
  ellipse(x - 30, y - 20, 60, 50);
  ellipse(x + 20, y - 20, 60, 60);
  ellipse(x + 70, y - 20, 60, 60);
  ellipse(x + 120, y - 20, 60, 50);

  ellipse(x - 50, y, 60, 50);
  ellipse(x - 30, y + 20, 60, 50);
  ellipse(x + 20, y + 20, 60, 60);
  ellipse(x + 70, y + 20, 60, 60);
  ellipse(x + 120, y + 20, 60, 50);
  ellipse(x + 140, y, 60, 50);
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
   
  beginShape();
  //lights();
  fill(255,0,0);
  vertex(-150, -150, -150);
  vertex( 150, -150, -150);
  vertex(   0,    0,  150);
  endShape();
  fill(#D6AE5F); // green
  beginShape();
  //lights();
  
  vertex( 150, -150, -150);
  vertex( 150,  150, -150);
  vertex(   0,    0,  150);
  endShape();
  
  beginShape();
  fill(#D6AE5F);
  lights();
  
  vertex( 150, 150, -150);
  vertex(-150, 150, -150);
  vertex(   0,   0,  150);
  endShape();
  
  //pushMatrix();
  beginShape();
  noLights();
  fill(#D6AE5F);
  vertex(-150,  150, -150);
  vertex(-150, -150, -150);
  vertex(   0,    0,  150);
  endShape();
  popMatrix();
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
    curveVertex(0,10);
    curveVertex(0,10);
    curveVertex(200,50);
    curveVertex(600,220);
    curveVertex(1500,220);
    curveVertex(1500,400);
    curveVertex(580,300);
    curveVertex(200,80);
    curveVertex(0,20);
    curveVertex(0,20);
    
  endShape();
  
  aliran(1000,250);
  aliran(800,300);
  aliran(1200,300);
  popMatrix();
  batu();
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


void batu(){
  pushMatrix();
  translate(100,600);
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
    translate(100,600);
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
