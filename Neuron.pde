class Neuron{
  

  String id = "N:";
  int x;
  int y;
  int size = 20;
  
  ArrayList <Neuron> neurons_prev;
  ArrayList <Neuron> neurons_post;
  
  //conexiones
  
  public Neuron(int x, int y){
    this.x = x;
    this.y = y;
    this.id = id + id_number;
    id_number = id_number ++;
    
    for (int i=0; i< neurons_prev.size(); i++){
       new Neural_connection(this, neurons_prev.get(i));
    }
    
  }
  
  public void draw(){
    ellipseMode(CENTER);
    ellipse(x, y, size, size);
  }
  
  
  
  
}
