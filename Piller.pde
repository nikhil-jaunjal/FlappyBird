class Piller
{
  float xPosition;
  float yPosition;
  float pillerWidth;
  float pillerHeight;
  Bird bird;
  StatisticsManager stats;

  public float getX()
  {
    return this.xPosition;
  }

  public float getY()
  {
    return this.yPosition;
  }

  public Piller(float x, float y, float width, float height)
  {
    xPosition = x;
    yPosition = y;
    pillerWidth = width;
    pillerHeight = height;
  }

  public void reDrawPiller(Bird bird, StatisticsManager stats)
  {
    fill(255, 255, 255);
    stroke(255, 255, 255);
    rect(xPosition, yPosition, pillerWidth, pillerHeight);
    this.bird = bird;
    this.stats = stats;
    stats.collision(bird, this);
  }
  
  public void movePiller(){

     if(this.xPosition + pillerWidth == 0){
      this.xPosition = displayWidth; 
     }
     this.xPosition = this.xPosition -1;
     reDrawPiller(bird,stats);
   }
  
}