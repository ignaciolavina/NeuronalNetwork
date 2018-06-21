
  PImage bkg_img;
  static int id_number = 0;
  NeuralNetwork nw_net;
  int size = 400;

void setup(){
 size(800, 600); 
 nw_net = new NeuralNetwork(150, size, 2, 3, 2, 1);   
 bkg_img = loadImage("assets/bkg_img.png");
  
}


void draw(){
  image(bkg_img, 0, 0);
  noFill();
  rect(150, 150, size, size);
  nw_net.draw();
  
  
}
