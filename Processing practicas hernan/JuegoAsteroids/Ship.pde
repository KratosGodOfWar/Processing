//definicion de la clase nave 
class Ship
{
//nave  
PVector pos;
PVector vel;
float dir;


Ship(){
//le pasamos el centro de la pantalla  
this.pos=new PVector(width/2,height/2);
this.vel=new PVector(0,0);
this.dir=-HALF_PI;
}


void draw(){
  
noFill();  
pushMatrix();
translate(this.pos.x,this.pos.y);
rotate(this.dir);
stroke(0,255,0);


beginShape();
vertex(10,0);
vertex(-10,-10);
vertex(-5,0);
vertex(-10,10);
endShape(CLOSE);  
popMatrix();

}


void thrust(float Force){
  PVector f= new PVector(Force,0);
  f.rotate(this.dir);
  this.vel.add(f);
  
}

void turn(float amount){
  
 this.dir+=amount; 
  
}






}
