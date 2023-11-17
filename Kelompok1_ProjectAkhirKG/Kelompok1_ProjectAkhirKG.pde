import processing.sound.*; // library sound
SoundFile unta; //variabel suara
SoundFile gurun;

Piramid piramida = new Piramid();
unsurAlam alam = new unsurAlam();
Pohon pohon = new Pohon();
Langit langit = new Langit();


PImage ImageUnta; // Deklarasi objek Image
PImage ImageBangunan; // Deklarasi objek Image
PImage ImageBangunan2; // Deklarasi objek Image

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

int gerakUnta = 600;

// Fungsi mouseClicked untuk mengganti suasana
void mouseClicked(){
  if (!Suasana) {
    Suasana = true;
    langit.time = 0;
    langit.MoveX = 0;
    langit.MoveY = 0;
    sunY = 0;
    cahaya2 = 0;
  } else {
    Suasana = false;
    langit.time = 0;
    langit.MoveX = 0;
    langit.MoveY = 0;
    sunY = 0;
    cahaya2 = 0;
  }
}

void setup(){
  size(1500,900,P3D);
  
  smooth(); // Memperhalus tepi gambar 
  
  hint(DISABLE_OPTIMIZED_STROKE); // Membuat anti aliasing
  
  
  langit.generateRandomStars(); // Memanggil fungsi membuat bintang
  
  ImageBangunan = loadImage("Bangunan.png");
  ImageBangunan.resize(600, 130);
  
  ImageBangunan2 = loadImage("Bangunan2.png");
  ImageBangunan2.resize(200, 130);
  
  ImageUnta = loadImage("Unta.png");
  ImageUnta.resize(200, 200);
  
  unta = new SoundFile(this, "untasound.mp3");
  
  gurun = new SoundFile(this, "gurunsound.mp3");
  
  gurun.loop();
}

void draw(){
  if(!Suasana){
    langit.Sore();
  }else{
    langit.Malam();
  }
  
  alam.tanah();
  
  piramida.bayanganPiramid();
  
  piramida.Bangunan();
  
  piramida.piramid(680,300,1,2.1,-2.5);
  piramida.piramid(350,310,0.8,2.3,-2);
  piramida.piramid(100,350,0.5,2.3,-2);
 
  
  alam.sungai();
  image(ImageUnta, gerakUnta, 450);
  pohon.drawTreePalm1();
  pohon.drawTreePalm2();
  pohon.drawTreePalm3();

  alam.drawKerikil();
  
}

void keyPressed() {
  unta.stop();
  int d = second();
  text(d, 10, 10);
  if (gerakUnta <= 425) {
    gerakUnta = 426;
  } else if (keyCode == LEFT) {
    gerakUnta = gerakUnta - 10;
    unta.play();
    gurun.stop();
  } else if (keyCode == RIGHT) {
    gerakUnta = gerakUnta + 10;
    unta.play();
    gurun.stop();
  }
}

void keyReleased() {
  gurun.loop(); // Stop playing the gurun sound
}
