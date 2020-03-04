Logo unLogo;
Logo otroLogo;

void setup ()
{
  size(640,480);
  unLogo=new Logo("Logo.png");
  otroLogo=new Logo("Logo2.png");

}

void draw(){
background(0,0,0);
unLogo.draw();
otroLogo.draw();
}
