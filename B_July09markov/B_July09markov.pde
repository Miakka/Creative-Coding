// i had a previous process where i used your code to clean up
//a series of texts i had written in 2009. I then applied the 
//markov chain to the text, and added a keypressed command at the end.
PFont thefont;
kiaMarkov mc;

float x, y;

void setup()
{
  size(800, 600);
  frameRate(3);
  thefont = loadFont("Avenir-Oblique-48.vlw");
  textFont(thefont);
  textSize(36);
  textAlign(LEFT);
  x = 20;
  y = 30;

  String chapters[] = loadStrings("071009_cooked.txt");
  mc = new kiaMarkov(chapters);

  background(250);
}


void draw()
{
   //background(250);
  fill(random(100, 225), random(100, 225), random(100, 225));
  mc.tick();
  println(mc.current);
  float tw = textWidth(mc.current+" ");
  if (x+tw>width)
  {
    x = 20;
    y+=36;
  }
  text(mc.current, x, y);
  x+=tw;
  if(y>height)
  {
     x = 20;
     y = 30;
  }
}

void keyReleased()
{
     background(250); 
}

