int posX=0;
int posY=3;
//Velocity
int velX=1;

PImage logo;

void setup ()
{
  // Width Height
  size(640,480);
  logo=loadImage("Logo.png");
}

//The function draw is executed 
void draw ()
{
 //         R G B
 background(0,0,0);
 
 /* This function loads logo from data folder 
 and position it on axis x and axis y  */
 image(logo,posX,posY);
 
 //note below the page
 posX=posX+velX;
 
 //The function checkCollision is called
 checkCollision();
}


void checkCollision()
{
  
  boolean collidedRight = posX+logo.width>=width;
  boolean collidedLeft = posX<0;
  
  //This block verifies what the sprint collided on the left or right side
  // || this aritmetic operator means OR 
  if (collidedLeft || collidedRight){ velX=velX*-1;}
  
}


//First  execution of draw function- posX=posX+velX; posX=0+1  posX-->1
//"Draw" asks (collidedLeft OR collidedRight) is true?? 
//if something is true then let's go 02-Collision Explanation


//Second execution of draw- posX=posX+velX; posX=1+1  posX-->2
//Item First


//Third  execution of draw- posX=posX+velX; posX=2+1  posX-->3
//Item First


//Fourth execution of draw- posX=posX+velX; posX=3+1  posX-->4
//Item First


//Fiveth execution of draw- posX=posX+velX; posX=4+1  posX-->5
//Item First


//Sixth  execution of draw- posX=posX+velX; posX=5+1  posX-->6




//02-Collision Explanation
/*
IF (posX+logo.width>=width) -->TRUE
collidedRight = TRUE 
then  velX=  1*-1   velX->-1 
*/

/*
IF (posX<0) -->TRUE
collidedLeft = TRUE 
then  velX=  -1*-1   velX->1 
*/
