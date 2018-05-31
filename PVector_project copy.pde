int x;

PImage bee;
PImage house;
PImage honey;
PImage garbage;
PImage next;
PImage back;
PImage ban;
PImage fly;

Mover[] movers = new Mover[1000];
Mover2[] mover2s = new Mover2[1000];
 
void setup() 
{
  size(700,700);
  background(255);
  for (int i = 0; i < movers.length; i++) 
  {
    movers[i] = new Mover();
  }
  
  for (int i = 0; i < mover2s.length; i++) 
  {
    mover2s[i] = new Mover2();
  }
  
  loadimages();
}
 
 void draw() 
{
  image(house,0,0,700,700);
  
  image(honey, mouseX,mouseY,50,50);
  
  if(x==0)
  {
  for (int i = 0; i < movers.length; i++) 
  {
    movers[i].update();
    movers[i].checkEdges();
    movers[i].display();
  }
  }
  
  image(garbage,700+x,0,700,700);
  
  if(x==-700)
  {
    image(ban, mouseX,mouseY,50,50);
  for (int i = 0; i < movers.length; i++) 
  {
    mover2s[i].update();
    mover2s[i].checkEdges();
    mover2s[i].display();
  }
  }
}

void loadimages()
{
  bee=loadImage("bee.png");
  house=loadImage("room.jpg");
  honey=loadImage("honey.png");
  garbage=loadImage("garbage.png");
  back=loadImage("back.png");
  next=loadImage("next.png");
  ban=loadImage("ban.gif");
  fly=loadImage("fly.png");
  
}

void keyPressed()
{
  if (key == CODED)
    {
    if (keyCode == RIGHT) 
    {
      x=-700;
      image(next,900,730,100,70);
    }
      if (keyCode == LEFT) 
    {
      x=700;
      image(back,0,730,100,70);
      
    }  
    }
}
    