 Particle[] halo=new Particle[1000];
void setup()
{

  size(500,500);
 for(int i=0;i<halo.length-3;i++){

    halo[i]= new Particle ();
  }
  halo[halo.length-1]=new Oddball();
  halo[halo.length-2]=new Oddball();
  halo[halo.length-3]=new Oddball();
}
void draw()
{
  background(0,250,250);
 for(int i=0;i<halo.length;i++){
    halo[i].paint();
    halo[i].move();
  }
}
class Particle
{
  int size,colour;
double x,y,speed, type;
double angle;
Particle(){
  x=250;
  y=250;
  double nmm=Math.random()*7+2;
  speed=nmm;
  colour=(int)(Math.random()*3);
  size=10;
  angle=Math.random()*2*Math.PI;
  type=(int)(Math.random()*6);
}
void paint(){
  if (colour==0)
  fill(255, 192, 203);
  if(colour==1)
  fill(230,230,250);
  if(colour==2)
  fill(197,180,227);
  if(type==0)
  ellipse((int)x,(int)y,size,size);
  if (type==1){
  ellipse((int)x,(int)y,size,size);
  ellipse((int)x+5,(int)y+5,size,size);
  ellipse((int)x-5,(int)y+5,size,size);
  }
  if(type==2){
      ellipse((int)x,(int)y,size,size);
  ellipse((int)x+8,(int)y+8,size,size);
  ellipse((int)x-8,(int)y+8,size,size);
    ellipse((int)x-8,(int)y-8,size,size);
        ellipse((int)x+8,(int)y-8,size,size);
  }
  if(type==3){
    ellipse((int)x,(int)y,size+5,size+5);
  }
  if(type==4){
          ellipse((int)x,(int)y,size,size);
  ellipse((int)x+8,(int)y+8,size,size);
  ellipse((int)x-8,(int)y+8,size,size);
  ellipse((int)x-8,(int)y-8,size,size);
  ellipse((int)x+8,(int)y-8,size,size);
  ellipse((int)x+8,(int)y,size,size);
  ellipse((int)x-8,(int)y,size,size);
  ellipse((int)x,(int)y+8,size,size);
  ellipse((int)x,(int)y-8,size,size);
  }
  if(type==5){
      ellipse((int)x,(int)y+4,size,size);
  ellipse((int)x,(int)y-4,size,size);
  }
}
void move(){
    x+=speed*Math.cos(angle);
    y+=speed*Math.sin(angle);
    if(x>=500||x<=0||y>=500||y<=0){
      x=250;
      y=250;
      angle=Math.random()*2*Math.PI;
    }
}
}


class Oddball extends Particle
{
Oddball(){
  x=250;
  y=250;
  speed=1;
  colour=(int)(Math.random()*3);
  size=50;
  angle=Math.random()*2*Math.PI;
  type=(int)(Math.random()*6);
}
}
