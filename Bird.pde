class Bird
{
  float bodyWidth=30;
  float bodyHeight=30;
  float birdxPos;
  float birdyPos;

  public float getX()
  {
    return this.birdxPos;
  }

  public float getY()
  {
    return this.birdyPos;
  }
  
  public Bird(float birdxPos, float birdyPos)
  {
    this.birdxPos = birdxPos;
    this.birdyPos = birdyPos;
  }

  void reDrawBird()
  {
    fill(255, 255, 0);
    stroke(255, 165, 0);
    ellipse(birdxPos, birdyPos, bodyWidth, bodyHeight);
    fill(255, 165, 0);
  }

  public void fly()
  {
    if (keyPressed)
    {
      if (key == ' ')
      {
        // bird will go upward
        birdyPos -=2;
      }
    }else{
      birdyPos +=3;
    }
    
    reDrawBird();
  }
}