float c_x = random(0, 600);
float c2_x = random(0, 600);
float c_y; 
float c2_y; 
float mx; 

void setup() 
{
  size(700,600);
  background(#A2DFFF);
}

void draw()
{
  background(#A2DFFF);
  grassygrass();
  mountains();
  
  fill(#FFEA00);
  ellipse(500, 200, 100, 100);
  
  cloud1(150);
  cloud2(320);

  carwindow();
  
  c_x = c_x + 1;
  c2_x = c2_x + 1;
  mx++; 
  
  if (c_x > 710) 
  {
    c_x = -30;
  }
  
  if (c2_x > 710) 
  {
    c2_x = -30;
  }
  
  if (mx > 740) 
  {
    mx = -200;
  }
  
}

void cloud1(float c_y) 
{
  noStroke();
  fill(255);
  ellipse(c_x+20, c_y+20, 70, 60);
  ellipse(c_x+100, c_y, 60, 60);
  ellipse(c_x+70, c_y-10, 70, 70); 
  ellipse(c_x+70, c_y+20, 80, 90);
  ellipse(c_x+120, c_y+20, 75, 65);
}

void cloud2(float c2_y) 
{
	noStroke();
	fill(255);
	ellipse(c2_x+20, c2_y+20, 70, 60);
	ellipse(c2_x+100, c2_y, 60, 60);
	ellipse(c2_x+70, c2_y-10, 70, 70); 
	ellipse(c2_x+70, c2_y+20, 80, 90);
	ellipse(c2_x+120, c2_y+20, 75, 65);
}

void grassygrass() 
{
	fill(#26A551);
	noStroke();
	rect(0, 500, 700, 100); 
}

void mountains()
{
	triangle(mx+0, 500, mx+100, 350, mx+200, 500);
	triangle(mx+150, 500, mx+250, 400, mx+300, 500);
}

void carwindow() 
{
	fill(#2c3436);
	quad(0,0, 70, 0, 40,600, 0, 600);
	quad(700, 0, 630, 0, 670, 700, 700, 700);
	rect(0, 0, 700, 50);
	rect(0, 550, 700, 50);
	rect(350, 0, 10, 700);
}
//create windows
//create second set of mountains in the back 
//text: "Look out the car window!" 

