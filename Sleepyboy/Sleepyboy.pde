  String[] Lamp = {"lamp.gif", "lampsauce.gif"};
  String[] Owl = {"OwlAsleep.png", "Owlbed.png"};
  int i = 0;
  int i2 = 0;
  int u = 0;
  int counter = 0;

void setup() { // kører 1 gang ved start
  size(1000, 1000);
  imageMode(CENTER);
}

void draw(){
  //println(counter);
  background(0);
  image(loadImage(Lamp[i]), 250, 500);
  image(loadImage(Lamp[i2]), 750, 500);
  image(loadImage(Owl[u]), 500, 500, 2006/4, 1675/4);
  if ((i == 0)&&(i2 == 0)){
    u = 0;
  } else {
    u = 1;
  }
}

void mouseReleased(){
  if ((mouseX<250+329/2)&&(mouseX>250-329/2)&&(mouseY>500-375/2)&&(mouseY<500+375/2)){
    if ((i == 0)){
      i = 1;
     println("Lights out!");
    } else {
      i = 0;
      println("Lights in!");
    }
  }
  
  if ((mouseX<750+329/2)&&(mouseX>750-329/2)&&(mouseY>500-375/2)&&(mouseY<500+375/2)){
    if ((i2 == 0)){
      i2 = 1;
     println("Lights out!");
    } else {
      i2 = 0;
      println("Lights in!");
    }
  }
  
}
