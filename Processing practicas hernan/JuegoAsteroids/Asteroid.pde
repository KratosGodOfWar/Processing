//esta es la definicion de la clase ,es el molde 
//que sirve para crear el objeto asteroide

class Asteroid
{
//aca se definen las propiedades o variables de la clase
PVector pos;
PVector vel;

ArrayList<PVector>vertices;
int R1=100;
int R2=height+100;

//Construct
Asteroid(){
  //el constructor es la funcion que recibe la configuracion 
  //por default del objeto creado
  this.pos= new PVector(random(R1,R2),0);
  this.pos.rotate(random(TWO_PI));
  this.vel=new PVector(random(0.1f,0.2f),0);
  this.vel.rotate(random(TWO_PI));
  generate();
}//end construct

void draw(){
pushMatrix();
translate(this.pos.x,this.pos.y);
stroke(0,255,0);
noFill();
beginShape();
for(PVector v:this.vertices)
vertex(v.x,v.y);
endShape(CLOSE);
popMatrix();
}//end draw

void generate(){
  
  this.vertices=new ArrayList<PVector>();
  int nVertices=13;
  float angle=0;
     
     for(int v=0;v<nVertices;v++)
     {
       PVector p = new PVector(random(20,50),0);
       p.rotate(angle);
       this.vertices.add(p);
       angle+=TWO_PI/nVertices;
     }//end for
  
}//end generate

}//END
