//your code here
NormalParticle [] field;
int timer = 0;
void setup()
{
	field = new NormalParticle[1000];
	for(int i = 0; i < field.length; i++)
	{
		field[i] = new NormalParticle();
	}
	size(800, 800);
	noStroke();
	background(0);
}
void draw()
{
	background(0);
	for(int i = 0; i < field.length; i++)
	{
		field[i].move();
		field[i].show();
	}
	timer++;

}
class NormalParticle
{
	float myX, myY;
	double myAngle, mySpeed;
	int myColor;
	NormalParticle()
	{
		myX = 400;
		myY = 400;
		myAngle = Math.random() * 2 * Math.PI;
		mySpeed = Math.random() * 10;
		myColor = color((int)(Math.random() * 255), (int)(Math.random() * 255), (int)(Math.random() * 255));
	}

	public void move()
	{
			myX += (float)(mySpeed * Math.cos(myAngle));
			myY += (float)(mySpeed * Math.sin(myAngle));
			if(myX >= 810 || myX <= -10 || myY >= 810 || myY <= -10)
			{
				myX = 400;
				myY = 400;
			}
	}

	public void show()
	{
		fill(myColor);
		ellipse(myX, myY, Math.abs((400 - myY)/10), Math.abs((400 - myY)/10));
	}
}
interface Particle
{
	public void show();
	public void move();
}
class OddballParticle extends NormalParticle
{
	//your code here
}
class JumboParticle extends NormalParticle
{
	//your code here
}

