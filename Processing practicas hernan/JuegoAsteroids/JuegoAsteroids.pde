//onimatrix@gmail.com
PImage grid;
boolean upPressed= false;
boolean leftPressed= false;
boolean rightPressed= false;
//crea una variable del tipo ship 
Ship ship;
ArrayList<Asteroid>asteroids;

void setup(){
  
 size(800, 600);
 ship = new Ship();
 asteroids = new ArrayList<Asteroid>();
 for(int a=0;a<6;a++){
   asteroids.add(new Asteroid());
 }
}  


 void draw(){

  background(0,0,0);
 //ship.draw usa el metodo o funcion draw que esta en la clase Ship 
  ship.draw();
 
 //si upPresed es true la nave acelera 0.1f
 if(upPressed){
   ship.thrust(0.1f);
 }
 //si leftpressed es true(verdad) la nave gira en el sentido izquierdo
  if(leftPressed){
   ship.turn(radians(-3));
 }
 
  if(rightPressed){
   ship.turn(radians(3));
 }
 
 //esta linea agrega el contenido de vlocidad a la posicion d la nave
  ship.pos.add(ship.vel);
 
 //si la posicion de la nave es menor a 0 en el eje x a 
 //la posicion de le sumo el ancho eso hace que entre por el
 //otro lado
  if(ship.pos.x<0)
 ship.pos.x+=width;
 
 //si se va por abajo le sumo el alto y entra por arriba 
  if(ship.pos.y<0)
 ship.pos.x+=height;

//si supera el ancho de la pantalla le resto el ancho
  if(ship.pos.x>=width)
 ship.pos.x-=width;
 
 //si supero el alto le resto el alto 
  if(ship.pos.y>=height)
  ship.pos.y-=height;

 }

//esta funcion controla el evento de apretar una tecla 
void keyPressed(){
 //este if pregunta si el codigo que recibe como evento es igual a UP o sea 
 // que es que detecta a la tecla ↑ la variable upPressed guarda el valor "verdadero" 
 if(keyCode==UP){
 upPressed=true;
 } 
 if(keyCode==LEFT){
 leftPressed=true;
 }
 if(keyCode==RIGHT){
 rightPressed=true;
 }
  
}

//esta funcion detecta que tecla soltamos 
//viene definida en processing y detecta evento keyrelease(soltar tecla)
//keyPressed detecta(apretar tecla)
void keyReleased(){
 if(keyCode==UP){
 upPressed=false;
 } 
 
 if(keyCode==LEFT){
 leftPressed=false;
 }
 
 if(keyCode==RIGHT){
 rightPressed=false;
 } 
}


  
