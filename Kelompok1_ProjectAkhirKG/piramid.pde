class Piramid{
  
  void bayanganPiramid(){
   
    //rotate(radians(90));
    pushMatrix();
    fill(#6C3428);
    //triangle(100, 300, 150, 150, 250, 300);
    triangle(780, 471, 855, 441, 1100, 451);
    popMatrix();
    //popMatrix();
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

void Bangunan(){
  if(!Suasana){
    pushMatrix();
    translate(999, 258, -100);
    image(ImageBangunan, 0, 0);
    popMatrix();
    
    pushMatrix();
    translate(798.8, 258, -100);
    image(ImageBangunan2, 0, 0);
    popMatrix();
  }else{
    directionalLight(255, 255, 255, 255, 0, -3);
    pushMatrix();
    translate(999, 258, -100);
    image(ImageBangunan, 0, 0);
    popMatrix();
    
    pushMatrix();
    translate(798.8, 258, -100);
    image(ImageBangunan2, 0, 0);
    popMatrix();
  }
}

void Pagar(){
  fill(#88897F);
  stroke(#929380);
  strokeWeight(1);
  pushMatrix();
  translate(96, 0, 110);
  quad(10, 450, 110, 450, 150, 480, -10, 480);
  popMatrix();
  
  fill(#929380);
  pushMatrix();
  translate(300, 0, 110);
  quad(-70, 450, -50, 450, -30, 480, -85, 480);
  popMatrix();
  
  fill(#88897F);
  pushMatrix();
  translate(240, 450, 110); // Pindahkan titik pusat ke tengah layar
  
  float radius = 10;
  beginShape();
  vertex(radius, 0);
  
  // BezierVertex(p1x, p1y, p2x, p2y, x, y)
  bezierVertex(radius, -radius*0.55, radius*0.55, -radius, 0, -radius);
  bezierVertex(-radius*0.55, -radius, -radius, -radius*0.55, -radius, 0);
  endShape(CLOSE);
  popMatrix();
  
  fill(#88897F);
  stroke(#929380);
  strokeWeight(1);
  pushMatrix();
  translate(370, 0, 110);
  quad(13, 450, 120, 450, 150, 480, -10, 480);
  popMatrix();
  
  fill(#929380);
  pushMatrix();
  translate(410, 0, 110);
  quad(-70, 450, -50, 450, -30, 480, -85, 480);
  popMatrix();
  
  fill(#88897F);
  pushMatrix();
  translate(350, 450, 110); // Pindahkan titik pusat ke tengah layar
  
  beginShape();
  vertex(radius, 0);
  
  // BezierVertex(p1x, p1y, p2x, p2y, x, y)
  bezierVertex(radius, -radius*0.55, radius*0.55, -radius, 0, -radius);
  bezierVertex(-radius*0.55, -radius, -radius, -radius*0.55, -radius, 0);
  endShape(CLOSE);
  popMatrix();
  
  fill(#929380);
  pushMatrix();
  translate(580, 0, 110);
  quad(-70, 450, -50, 450, -30, 480, -85, 480);
  popMatrix();
  
  fill(#88897F);
  pushMatrix();
  translate(520, 450, 110); // Pindahkan titik pusat ke tengah layar
  
  beginShape();
  vertex(radius, 0);
  
  // BezierVertex(p1x, p1y, p2x, p2y, x, y)
  bezierVertex(radius, -radius*0.55, radius*0.55, -radius, 0, -radius);
  bezierVertex(-radius*0.55, -radius, -radius, -radius*0.55, -radius, 0);
  endShape(CLOSE);
  popMatrix();
}

}
