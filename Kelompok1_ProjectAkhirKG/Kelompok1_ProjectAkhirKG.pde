//import Piramid;
void setup(){
  size(1500,900,P3D);
}

void draw(){
  background(255);
  pushMatrix();
  fill(#CEAD51);
  translate(0,0,-200);
  rect(-200,400,2000,800);
  popMatrix();


  piramid(800,350,1.1,2,-3);
    
  piramid(500,350,0.7,2.4,-3);
  
  piramid(300,350,0.5,2.5,-3);



  

 

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
