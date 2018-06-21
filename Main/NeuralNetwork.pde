class NeuralNetwork{
  
  Neuron [] list_initial_layer;
  Neuron [][] list_interm_layer;
  Neuron [] list_final_layer;
  
  ArrayList <Neural_connection> list_conections;
  //Neural_connection [] list_conections;
  
  int size = 400; //for graphic representation
  int y_space = 0;
  int x_space = 0;
  
  int neurons_interm_layer;
  int neurons_init_layer;
  
  public NeuralNetwork(int initial_point, int size, int neurons_init_layer, int neurons_interm_layer, int num_layers, int neurons_final_layer){
    this.neurons_interm_layer = neurons_interm_layer;
    this.neurons_init_layer = neurons_init_layer;
    
    list_initial_layer = new Neuron [neurons_init_layer];
    list_interm_layer = new Neuron [neurons_interm_layer][num_layers];
    list_final_layer  = new Neuron [neurons_final_layer];
    list_conections = new ArrayList<Neural_connection>();
    //list_conections = new Neural_connection [neurons_init_layer*neurons_interm_layer + neurons_interm_layer^num_layers + neurons_final_layer*neurons_interm_layer];
        
    y_space = (size/(neurons_init_layer+1));
    x_space = size/(num_layers + 1);
    
    //creation of first neural layer
    for (int i = 0; i < neurons_init_layer; i++){
       list_initial_layer[i] = new Neuron(initial_point, initial_point + y_space + i*y_space);
    }
    
    //creating second neural layer
    y_space = (size/(neurons_interm_layer+1)); //reset y
    for(int j = 0; j< num_layers; j++){
      for (int i = 0; i < neurons_interm_layer; i++){
        list_interm_layer[i][j] = new Neuron(initial_point + x_space + j*x_space, initial_point + y_space + i*y_space);   
      }
    }
    
    //Creating final output layer
    y_space = (size/(neurons_final_layer+1)); //reset y
    for(int i = 0; i < neurons_final_layer; i++){
       list_final_layer[i] = new Neuron(initial_point + size, initial_point + y_space + i*y_space);
       println("x: " + (initial_point + size) + ", y: " + (initial_point + y_space + i*y_space));
    }
    
    //CONEXIONS!
    //Create conection first layer
    for (int i = 0; i < neurons_init_layer; i++){
      for(int j = 0; j < neurons_interm_layer; j++){
       list_conections.add(new Neural_connection(list_initial_layer[i], list_interm_layer[j][0])); 
      }
    }
    
    //Create conection matrix layer
    for (int i = 0; i < neurons_interm_layer; i++){
      for(int j = 0; j < num_layers-1; j++){
        for(int k = 0; k < neurons_interm_layer; k++){
           list_conections.add(new Neural_connection(list_interm_layer[i][j], list_interm_layer[k][j+1])); 
        }
      }
    }
    
    //Create final layer conections
    for (int i = 0; i < neurons_interm_layer; i++){
        for(int k = 0; k < neurons_final_layer; k++){
           list_conections.add(new Neural_connection(list_interm_layer[i][num_layers-1], list_final_layer[k])); 
        }      
    }
    
    
    
  }
  
  public void draw(){
    for(int i= 0; i< list_initial_layer.length; i++){
      list_initial_layer[i].draw();       
    }
    
    for(int i= 0; i< list_interm_layer.length; i++){
      for(int j=0; j < list_interm_layer[0].length; j++){  
        list_interm_layer[i][j].draw();
      }
    }
    
    for(int i = 0; i<list_final_layer.length; i++){
       list_final_layer[i].draw();
    }
    
    for (int i=0; i<list_conections.size(); i++){
        list_conections.get(i).draw();
    }
    
  }
  
  
  
}
