class Neuron{
  

  String id = "N:";
  int x;
  int y;
  int size = 20;
  
  ArrayList <Neuron> neurons_prev = new ArrayList <Neuron> ();
  ArrayList <Neuron> neurons_post = new ArrayList <Neuron> ();
  
  //conexiones
  
  public Neuron(int x, int y){
    this.x = x;
    this.y = y;
    this.id = id + id_number;
    id_number = id_number ++;
    
    //println("neuron: " + id_number + " x: " + x + ", y: " + y);
    
    for (int i=0; i< neurons_prev.size(); i++){
       new Neural_connection(this, neurons_prev.get(i));
    }
    
  }
  
  public void draw(){
    fill(0);
    ellipseMode(CENTER);
    ellipse(x, y, size, size);
  }
  
  
  
  
}
