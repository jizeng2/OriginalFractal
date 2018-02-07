int x=50;
public void setup()
{
  background(250);
  size(500, 500);
}

public void draw()
{
}

public void mousePressed()
{
  x=x+10;
  background(250);
  Tree(250, 500,x, 90);
}

public void Tree(double x0, double y0, double len, double angle)
{
  if (len > 2) {
    double x1 = x0 + len * Math.cos(angle);
    double y1 = y0 - len * Math.sin(angle);
    line((float)x0,(float)y0,(float)x1,(float)y1);
    Tree(x1, y1, len * 0.75, angle + 30);
    Tree(x1, y1, len * 0.63, angle - 50);
  }
}