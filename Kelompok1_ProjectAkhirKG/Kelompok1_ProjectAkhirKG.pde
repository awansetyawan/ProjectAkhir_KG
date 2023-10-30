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

float startX, startY; // Koordinat X dan Y awal
float endX, endY;   // Koordinat X dan Y akhir
float duration = 30000; // Durasi animasi dalam milidetik (misalnya 2 detik)
float startTime;
float elapsed;


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
  
  //sungai();
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

int x2 = 0;
int y2 = 600;
float x3 = 0; // Koordinat X awal
float speed = 8; // Kecepatan pergerakan
int lastTime = 0;

float easeInOutQuad(float t, float b, float c, float d) {
  t /= d / 2;
  if (t < 1) return c / 2 * t * t + b;
  t--;
  return -c / 2 * (t * (t - 2) - 1) + b;
}

void sungai(){
 float currentTime = millis();
 elapsed = currentTime - startTime; 
  
pushMatrix();
if(Suasana == false){
  stroke(#71A9FF);
  fill(100, 150, 255); // Warna biru untuk sungai
}

else {
  stroke(#86C1FA);
  fill(#6CADED);
}

//noStroke();
strokeWeight(10);
beginShape();
curveVertex(x2, y2);
curveVertex(x2, y2);
curveVertex(x2+300, y2+50);
curveVertex(width, y2+50);
curveVertex(width, y2+50);
curveVertex(width, y2+300);
curveVertex(0, y2+300);
curveVertex(0, y2+300);
endShape();

  stroke(#9BDBF7);
  strokeWeight(2);
    // Hitung kemajuan animasi menggunakan easing (misalnya, quadratic easing)
    float progress = easeInOutQuad(elapsed, 0, 1, duration);

    // Interpolasi linear dari awal ke akhir dengan kemajuan animasi
    float x = lerp(startX, endX, progress);
    float y = lerp(startY, endY, progress);
      pushMatrix();
  translate(x,680);
  
  line(0,50,50,50);
  line(50*2,20,50*3,20);
  line(50*4,50,50*5,50);
  line(50*6,20,50*7,20);
  line(50*8,50,50*9,50);
  line(50*10,20,50*11,20);
  line(50*12,50,50*13,50);
  line(50*14,20,50*15,20);
  line(50*16,50,50*17,50);
  line(50*18,20,50*19,20);
  line(50*20,50,50*21,50);
  line(50*22,20,50*23,20);
  line(50*24,50,50*25,50);
  line(50*26,20,50*27,20);
  line(50*28,50,50*29,50);
  
  popMatrix();
  float centerX = -50; // Koordinat X pusat lingkaran
  float centerY = 80; // Koordinat Y pusat lingkaran
  float radius = 50; // Radius lingkaran
  float startAngle = PI; // Sudut mulai (180 derajat)
  float endAngle = TWO_PI; // Sudut selesai (360 derajat)

endShape();
popMatrix();
  stroke(#9B8769);
batu();
noStroke();
}

void batu(){
  
  pushMatrix();
  translate(200,770);
  fill(#98948D);
  beginShape();
  stroke(#98948D);
  vertex(0,50,10);
  vertex(80,50,10);
  vertex(120,0,10);
  vertex(130,20,10);
  vertex( 180,50,10 );
  vertex( 190, 80,10 );
  vertex( -10, 80,10 );
  vertex( 0,50 ,10 );
  vertex( 0,50 ,10 );
  //vertex();
  endShape();
  beginShape();
  stroke(#83807B);
    fill(#83807B);
  vertex(120,0,10);
  vertex(130,20,10);
  vertex( 180,50,10 );
  vertex( 190, 80,10 );
  vertex(120,50,10);
   vertex(120,0,10);
  endShape();
  stroke(#9BDBF7);
  beginShape();
  line(-20,90,200,90);
  endShape();
  popMatrix();
  
  pushMatrix();
  translate(600,720);
  fill(#98948D);
  beginShape();
  stroke(#98948D);
  vertex(0,50,10);
  vertex(80,50,10);
  vertex(120,0,10);
  vertex(130,20,10);
  vertex( 180,50,10 );
  vertex( 190, 80,10 );
  vertex( -10, 80,10 );
  vertex( 0,50 ,10 );
  vertex( 0,50 ,10 );
  //vertex();
  endShape();
  beginShape();
  stroke(#83807B);
    fill(#83807B);
  vertex(120,0,10);
  vertex(130,20,10);
  vertex( 180,50,10 );
  vertex( 190, 80,10 );
  vertex(120,50,10);
   vertex(120,0,10);
  endShape();
  stroke(#9BDBF7);
  popMatrix();
}
