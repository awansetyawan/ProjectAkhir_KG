class unsurAlam{
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
  
  void tanah(){
    if(!Suasana){
      pushMatrix();
      fill(#BA704F);
      translate(0,0,-200);
      rect(-200,400,2000,800);
      arc(1000,400,2500,50,PI,TWO_PI);
      fill(#DFA878);
      noStroke();
      arc(600,900,2500,300,PI,TWO_PI);
      square(-200,900,2000);  
      popMatrix();
      pushMatrix();
      translate(0,0,-200);
      rotateX(2);
     quad(2000,400,2000,900,900,900,1000,900);
      popMatrix();
  }else{
    pushMatrix();
    fill(#6C3428);
    translate(0,0,-200);
    rect(-200,400,2000,800);
    arc(1000,400,2500,50,PI,TWO_PI);
    fill(#DFA878);
    noStroke();
    arc(600,900,2500,300,PI,TWO_PI);
    square(-200,900,2000);  
    popMatrix();
    pushMatrix();
    translate(0,0,-200);
    rotateX(2);
   quad(2000,400,2000,900,900,900,1000,900);
    popMatrix();
  }
    
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
    fill(#4387CE);
  }
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
  
  void drawKerikil(){
    fill(#88897F);
    
    // Setengah lingkaran
    arc(270, 880, 80, 80, PI, TWO_PI);
    arc(400, 880, 50, 50, PI, TWO_PI);
    arc(920, 710, 60, 60, PI, TWO_PI);
    arc(1300, 730, 90, 90, PI, TWO_PI);
  }

}
