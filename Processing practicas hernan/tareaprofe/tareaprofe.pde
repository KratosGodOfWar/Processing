void setup(){

  myrect(0,0,80,60,20);
 
}

void myrect(int x, int y,int w, int h ,int b){
 

  rect(x,y,w,b);
  rect(x,x+b,b,h-2*b);
 rect(x,y+h-b,w-b,b);
 rect(x+w-b,y+b,b,h-b);
 
}





//dibujar un cuadrado sin relleno con rectangulos 
