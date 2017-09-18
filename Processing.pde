int displayWidth = 900;
int displayHeight = 700;
int flag=0;
float pillerWidth = 50;
float pillerHeight = random(250, 330);
int score = 0;
float pillerMutualDistance = 250;

StatisticsManager stats;
Piller topPiller[] = new Piller[5];
Piller bottomPiller[] = new Piller[5];
Bird bird;

void setup() 
{
  background(0);
  reset();
}

void reset()
{
  bird = new Bird((displayWidth/5)-100, displayHeight/2);
  stats = new StatisticsManager();

  for (int i=0; i<topPiller.length; i++)
  {
    topPiller[i] = new Piller((displayWidth/2)+pillerWidth+i*200, 0, pillerWidth, random(200, 330));
    topPiller[i].reDrawPiller(bird, stats);
  }

  for (int i=0; i<bottomPiller.length; i++)
  {
    float pYpos = random(360, 460);
    bottomPiller[i] = new Piller((displayWidth/2)+pillerWidth+i*200, pYpos, pillerWidth, displayHeight-pYpos);
    bottomPiller[i].reDrawPiller(bird, stats);
  }
}

void settings() 
{
  size(displayWidth, displayHeight);
}


void draw() 
{
  background(0);
  bird.fly();
  for (int i=0; i<topPiller.length; i++)
  {
    topPiller[i].movePiller();
  }
  for (int i=0; i<bottomPiller.length; i++)
  {
    bottomPiller[i].movePiller();
  }
  stats.showScore();
}