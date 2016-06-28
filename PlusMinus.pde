float a;
PImage background, metal;
color[] colors = {#000000, #3FB8AF,#7FC7AF,#E5E3B0,#FF9E9D,#FF3D7F};


void setup(){
  size(1920,1080,FX2D); //fx2d for speed
  smooth(8);
  strokeCap(SQUARE);
  background = loadImage(sketchPath() + "/assets/sand.jpg");
  metal = loadImage(sketchPath() + "/assets/metal.jpg");
  image(background,0,0);
 
  a = 0; //rotation angle
  
}

void draw() {

  strokeWeight(5);
  if(a <= PI){
    for(int i = 6; i >0 ; i--){
     noStroke();
     fill(colors[i-1]);
     arc(width/2, height/2,120*i,120*i, PI, PI + a);

   } 
 }
 else{
  for(int i = 6; i >0; i--){
      noStroke();
      fill(colors[i-1]);
      arc(width/2, height/2,120*i,120*i, 0 +a  , PI + a);
    }
  }
  
  //rotating bar
  pushMatrix();
    fill(255);
    stroke(0);
    strokeWeight(1);
    noStroke();
    translate(width/2,height/2);
    rotate(a);
    rectMode(CORNER);
    stroke(0);
    strokeWeight(1);
    image(metal, -375,-10);
  popMatrix(); 
    if(frameCount >= 120){
      a += 0.005;
    }
  }