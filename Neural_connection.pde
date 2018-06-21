class Neural_connection{
 
  int weight;
  //int ponderation;
  Neuron neuron1, neuron2;
  
  public Neural_connection(Neuron neuron1, Neuron neuron2){
    this.neuron1 = neuron1;
    this.neuron2 = neuron2;
    
  }
  
  public void draw(){
   stroke(3);
   rect(neuron1.x, neuron1.y, neuron2.x, neuron2.y); 
    
  }
  
  
}
