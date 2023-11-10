Piramid piramida = new Piramid();
unsurAlam alam = new unsurAlam();
Pohon pohon = new Pohon();
Langit langit = new Langit();


PImage ImageUnta; // Deklarasi objek Image
PImage ImageBangunan; // Deklarasi objek Image

boolean Suasana = false;


float cahaya = 0;
float cahaya2 = 0;
boolean kekiri = false;
boolean ulang = false; 

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
  
  langit.generateRandomStars(); // Memanggil fungsi membuat bintang
  
  ImageBangunan = loadImage("Bangunan.png");
  ImageBangunan.resize(600, 130);
  
  ImageUnta = loadImage("Unta.png");
  ImageUnta.resize(200, 200);
  
}

void draw(){
 
  if(!Suasana){
    langit.Malam();
  }else{
    langit.Sore();
  }
  
   alam.tanah();
  
  piramida.bayanganPiramid();
  image(ImageBangunan, 915, 263);
  piramida.piramid(680,300,1,2.1,-2.5);
  piramida.piramid(350,310,0.8,2.3,-2);
  piramida.piramid(100,350,0.5,2.3,-2);
 
  
  alam.sungai();
  pohon.drawTreePalm1();
  pohon.drawTreePalm2();
  pohon.drawTreePalm3();

  alam.drawKerikil();
  image(ImageUnta, 600, 450);
  
}
