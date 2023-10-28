//import Piramid;

int numStars = 70; // Jumlah Bintang
int[] starX = new int[numStars];
int[] starY = new int[numStars];

boolean Suasana = false;

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
    // Taruh disini untuk void siang hari + awan
    background(255); 
  }
  
  pushMatrix();
  fill(#CEAD51);
  translate(0,0,-200);
  rect(-200,400,2000,800);
  popMatrix();

  piramid(800,350,1.1,2,-3);
    
  piramid(500,350,0.7,2.4,-3);
  
  piramid(300,350,0.5,2.5,-3);
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

void Malam(){
 background(19, 0, 90); 
 
 drawStars();
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
