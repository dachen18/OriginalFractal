PShape s;
public void setup()
{
	size(1000,1000);

}
public void draw()
{
	// float leng = (float)(20 + (Math.sqrt(((500-mouseX)*(500-mouseX)+((500-mouseY)*(500-mouseY))))));
}
public void fractal(float x ,float y,float len)
{
	int DetColor = (int)(Math.random()*255);
	int DetColor1 = (int)(Math.random()*255);
	int DetColor2 = (int)(Math.random()*255);
	ellipse(x,y,len,len);
	if (len < 20)
	{
		noStroke();
		fill(DetColor,DetColor1,DetColor2);
		ellipse(x,y,len,len);
	}
	
	else
	{
		fractal(x,y,len/2);
		fractal(x+len/2,y+len/2,len/2);
		fractal(x-len/2,y-len/2,len/2);
		fractal(x+len/2,y-len/2,len/2);
		fractal(x-len/2,y+len/2,len/2);
		fractal(x+len/1.2,y+len/1.2,len/2);
	}
}
void mousePressed()
{
	background(255);
  float leng = (float)(20 + (Math.sqrt(((500-mouseX)*(500-mouseX)+((500-mouseY)*(500-mouseY))))));
  fractal(mouseX,mouseY,leng);
}