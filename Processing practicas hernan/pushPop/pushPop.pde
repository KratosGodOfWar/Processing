PImage grid;

void setup() {
  size(800, 600);
  grid = loadImage("grid.jpg");
}

void draw() {
  background(255);
  //la linea de abajo si la descomentas se ve como se desplaza el eje de coordenadas
  //translate(100,100);
  image(grid, 0, 0);
  
  //dentro del push pop queda encerrado el efecto del translate
  pushMatrix();
  translate(100,100);
  fill(0,255,0);
  rect(0,0,50,50);
  popMatrix();
  
  
  rect(0,0,50,50);
  
  
}
