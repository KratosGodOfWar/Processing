

class Logo
{
//declaration of variables
int x;int vx;
int y;int vy;
PImage sprite;

//construct method 
Logo(String File){
this.x=0;this.vx=int(random(1,3));;
this.y=50;this.vy=1;
this.sprite=loadImage(File);
}

//draw method 
void draw()
{
image(this.sprite,this.x,this.y);
this.x=this.x+this.vx;
this.y=this.y+this.vy;
checkCollision();
}

//checkCollision method
void checkCollision()
{
 //boolean vars
 boolean cLeft=this.x<0;
 boolean cRight=this.x+this.sprite.width>=width;
 boolean cUp=this.y<0;
 boolean cDown=this.y+this.sprite.height>=height;
 
 //if cLeft or cRight then vx change its sign
 if(cLeft || cRight){
this.vx=this.vx*-1; }

//if cLeft or cRight then vy change its sign
 if(cUp || cDown){
 this.vy=this.vy*-1;}

}

}




 
