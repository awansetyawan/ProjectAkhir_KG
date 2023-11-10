class Piramid{
  
  void bayanganPiramid(){
    pushMatrix();
    translate(1100,220);
    text(mouseX,10,0);
    text(mouseY,10,10);
    popMatrix();
    //rotate(radians(90));
    pushMatrix();
    fill(#C49E90);
    //triangle(100, 300, 150, 150, 250, 300);
    triangle(786, 471, 855, 441, 1100, 451);
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

}
