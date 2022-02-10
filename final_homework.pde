float baseH = 60;
float baseW = 5;
float arm1 = 50;
float arm2 = 50;
float arm3 = 60;
float arm4 = 15;
float armW1 = 5;
float armW2 = 1;
float angle0 = 0;
float angle1 = 0;
float angle2 = 0;
float angle3 = 0;
float angle4 = 0;
float angle5 = -45;
float angle6 = -90;
float angle7 = 135;
float l = 0;
float θ = 0.5;


void setup(){
  size(1200, 800, P3D);
  camera(150, 0, 100, 0, 0, 0, 0, 0, -1);
  noStroke();  
}

void draw(){
  background(255);
  
  pushMatrix();
  rotateZ(radians(angle0));
  translate(0, 0, -baseH/2);
  fill(50);
  box(baseW, baseW, baseH);
  
  translate(0, 0, baseH/2-armW1/2);
  rotateX(radians(angle1));
  translate(-baseW/2-armW1/2, 0, 0);
  fill(100);
  box(armW1, armW1, armW1);
  translate(-armW1, 0, arm1/2-armW1/2);
  box(armW1,armW1,arm1);
  
  translate(0, 0, arm1/2-armW1/2);
  rotateX(radians(angle2));
  translate(armW1, 0, arm2/2-armW1/2);
  fill(150);
  box(armW1,armW1,arm2);
  
  translate(0, 0, arm2/2-armW1/2);
  rotateX(radians(angle3));
  translate(armW1, 0, -arm3/2+armW1/2);
  fill(50);
  box(armW1, armW1, arm3);
  
  translate(0, l-5, -arm3/2-armW2/2);
  box(armW1, arm4, armW2);
  popMatrix();
  
  
  pushMatrix();
  rotateZ(radians(angle4));
  translate(0, 0, -baseH/2);
  
  translate(0, 0, baseH/2-armW1/2);
  rotateX(radians(angle5));
  translate(-baseW/2-armW1/2, 0, 0);
  translate(-armW1, 0, arm1/2-armW1/2);
  
  translate(0, 0, arm1/2-armW1/2);
  rotateX(radians(angle6));
  translate(armW1, 0, arm2/2-armW1/2);
  
  translate(0, 0, arm2/2-armW1/2);
  rotateX(radians(angle7));
  translate(armW1, 0, -arm3/2+armW1/2);
  
  translate(0, 10, 2.5-arm3/2);
  sphere(2.5);
  popMatrix();
  
  
 if(mousePressed){
   if (l == 0 && angle0 == 0 && angle1 > -45){
    angle1 = angle1 - θ;
  }
  if (l == 0 && angle0 == 0 && angle2 > -90){
    angle2 = angle2 - θ;
  }
  if (l == 0 && angle0 == 0 && angle3 < 135){
    angle3 = angle3 + θ;
  }
  if (angle0 == 0 && angle1 == -45 && angle2 == -90 && angle3 == 135 && l < 10){
    l = l + 0.5*θ;
  }
  if (l == 10 && angle0 == 0 && angle1 < 0 && angle3 >90 ){
    angle1 = angle5 = angle1 + θ;
    angle3 = angle7 = angle3 - θ;
  }
  if (angle1 == 0 && angle3 == 90 && angle0 < 180){
    angle0 = angle4 = angle0 + θ;
  }
  if (angle0 == 180 && angle1 > -45 && angle3 < 135){
    angle1 = angle5 = angle1 - θ;
    angle3 = angle7 = angle3 + θ;
  }
  if (angle0 != 0 && angle0 == 180 && angle1 == -45 && angle3 == 135 && l > 0){
    l = l - 0.5*θ;
   }
 }
  
  
  if(keyPressed){
    if(key == 'q' && angle0 < 360){
      angle0 = angle0 + θ;
    }
     if(key == 'w' && angle0 > -360){
      angle0 = angle0 - θ;
    }
    if(key == 'a' && angle1 < 360){
      angle1 = angle1 + θ;
    }
    if(key == 's' && angle1 > -360){
      angle1 = angle1 - θ;
    }
    if(key == 'z' && angle2 < 360){
      angle2 = angle2 + θ;
    }
    if(key == 'x' && angle2 > -360){
      angle2 = angle2 - θ;
    }
    if(key == 'e' && angle3 < 360){
      angle3 = angle3 + θ;
    }
     if(key == 'r' && angle3 > -360){
      angle3 = angle3 - θ;
    }
    if(key == 'd' && l < 10){
      l = l + 0.5*θ;
    }
    if(key == 'f' && l > 0){
      l = l - 0.5*θ;
    }
    if (key == 'C'){
      angle0 = 0;
      angle1 = 0;
      angle2 = 0;
      angle3 = 0;
      angle4 = 0;
      angle5 = -45;
      angle7 = 135;
      l = 0;
    }
  }
}
