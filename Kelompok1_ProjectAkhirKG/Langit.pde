class Langit{
int numStars = 200; // Jumlah Bintang
int[] starX = new int[numStars];
int[] starY = new int[numStars];

float MoveX = 0; // Koordinat awal X
float MoveY = 0; // Koordinat awal Y

//float MoonSpeed = 1; // Kecepatan gerak bulan

float time = 0;
float totalTime = 880; // Sesuaikan dengan durasi animasi
float speed = 0.5; // Sesuaikan dengan kecepatan yang diinginkan

void Malam(){
 background(19, 0, 90); 
 
 drawStars();
 
 drawBulan();
}

void drawBulan(){
  // Menggerakkan bumi ke kiri dan ke kanan
 
  //arahcahaya = MoonX;
  
  // Jika bumi mencapai batas kiri atau kanan layar, balik arah geraknya
  //if (MoonX > width - 2000 && MoonY > height - 350) {
  //  MoonY *=-1;
  //  MoonX *=-1;
  //}
  // if (kekiri == false){
  //  directionalLight(204, 204, 204, cahaya, 0, -1);
  //  cahaya = cahaya + 0.002;
  //}
  //else if(kekiri == true){
  //  cahaya = cahaya - 0.002;
  //  directionalLight(204, 204, 204, cahaya, 0, -1);
  //}

  // Animasi terbit dan terbenam
  if (time < totalTime) {
    // Menaik secara diagonal
    MoveX += 2.5 * speed;
    MoveY += 1 * speed;
  } else {
    // Turun secara diagonal
    MoveX += 2.5 * speed;
    MoveY -= 1 * speed;
  }

  // Push untuk awal objek bulan
  pushMatrix(); // Simpan transformasi
  //rotate(-MoonX);
  
  //if (MoonY < 300) {
  //  // Mengatur posisi bulan agar berpindah berdasarkan nilaiXBulan
  //  translate(780+MoonX,-200+MoonY,-300); 
  //}else{
  //  // Mengatur posisi bulan agar berpindah berdasarkan nilaiXBulan
  //  translate(50+MoonX,100-MoonY,-300);
  //}
  
  translate(-250 + MoveX, 150 - MoveY, -300);
  
  scale(1.3);
  
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
  
  // Perbarui waktu
  time += 1;

  // Atur agar animasi berulang
  if (time > 2.0 * totalTime) {
    time = 0;
    MoveX = 0;
    MoveY = 0;
    cahaya2 = 0;
  }
  
  //MoonX += 1; // Menggerakan bulan
  //MoonY += 0.5; // Menggerakan bulan

  // Pop untuk akhir objek bulan
  popMatrix(); // Hapus transformasi
}

void generateRandomStars() {
  
  // Perulangan for untuk memmbuat posisi bintang
  for (int i = 0; i < numStars; i++) {
    starX[i] = int(random((width+900)));
    starY[i] = int(random(450));
  }
  
}

void drawStars() {
  // Perulangan for untuk menggambar bintang sesuai dengan posisi yang telah ditentukan
  for (int i = 0; i < numStars; i++) {
    float starSize = random(1, 6); // Ukuran random bintang
    fill(205, 245, 253); // Warna Kuning
    noStroke();
    pushMatrix();
    translate(-300,-150,-300);
    ellipse(starX[i], starY[i], starSize, starSize); // Menggambar bintang dengan ukuran yang berubah
    popMatrix();
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
  
  // Animasi terbit dan terbenam
  if (time < totalTime) {
    // Menaik secara diagonal
    MoveX += 2.5 * speed;
    MoveY += 1 * speed;
  } else {
    // Turun secara diagonal
    MoveX += 2.5 * speed;
    MoveY -= 1 * speed;
  }
  
  pushMatrix();
  
  translate(-250 + MoveX, 350 - MoveY, -300);
  
  scale(0.8);
  
  circle(0, 0, 200);
  
  //MoveX += 1; // Menggerakan bulan
  //MoveY += 0.5; // Menggerakan bulan
  
  // Perbarui waktu
  time += 1;

  // Atur agar animasi berulang
  if (time > 2.0 * totalTime) {
    time = 0;
    MoveX = 0;
    MoveY = 0;
    cahaya2 = 0;
  }
  
  popMatrix();
  
  // Pergerakan matahari ke atas
  if (time != 0){
    sunY += speed; 
  }else{
    sunY = 0;
  }
    
  // Jika matahari berada di atas layar, reset posisinya
  //if (MoonX > width - 2000 && MoonY > height - 350) {
  //  MoonY *=-1;
  //  MoonX *=-1;
  //}
  
  // 1
  if (time != 0){
    directionalLight(255, 255, 255, cahaya2, 0, -3);
    cahaya2 = cahaya2 + 0.005;
  }
  
  else {
    cahaya = cahaya - 0.002;
    directionalLight(204, 204, 204, cahaya, 0, -3);
  }
  
  // 2
  //if (sunY < height - 100){kekiri = true;}
  //if (sunY == height - 100){kekiri = false; cahaya2 = 0;}
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

}
