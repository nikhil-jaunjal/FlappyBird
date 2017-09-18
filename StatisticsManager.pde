class StatisticsManager
{
  public void collision(Bird bird, Piller piller)
  {
    float extraMargine = 15;

    //bird touched to left of piller
    if (xPillarCollides(bird, extraMargine, piller) && (bird.getY() >= piller.getY() && bird.getY() <= piller.getY() + piller.pillerHeight + extraMargine))
    {
      flag = 1;
      showErrorMessege();
    }

    //bird touched at top of piller
    if (isOnorBelowPiller(bird, extraMargine, piller) && (bird.getY()+extraMargine >= piller.getY() && bird.getY()+extraMargine <= piller.getY()+piller.pillerHeight))
    {
      flag = 1;
      showErrorMessege();
    }

    //bird touched at bottom of piller
    if (isOnorBelowPiller(bird, extraMargine, piller) && (bird.getY()-extraMargine <= piller.getY()-piller.pillerHeight && bird.getY()+extraMargine <= piller.getY())) 
    {
      flag = 1;
      showErrorMessege();
    } 

    //bird touched at upper & lower margines of display
    if (bird.getY() <= 0 || bird.getY()>=displayHeight)
    {
      flag = 1;
      showErrorMessege();
    }

    if (bird.getX()>=displayWidth)
    {
      reset();
    }

    if (flag ==1) 
    {
      //noLoop();
    }
  }

  public boolean xPillarCollides(Bird bird, float extraMargine, Piller piller) 
  {
    return ((bird.getX() + extraMargine >= piller.getX()) && (bird.getX() + extraMargine)<= (piller.getX()+ piller.pillerWidth));
  }

  public boolean isOnorBelowPiller(Bird bird, float extraMargine, Piller piller) 
  {
    return (bird.getX()>=piller.getX() && bird.getX()<=piller.getX()+(piller.pillerWidth+10+extraMargine));
  }

  public void showErrorMessege()
  {
    background(0);
    fill(255, 255, 255);
    text("Game Over", displayWidth/2, displayHeight/2);
    noLoop();
  }

  public void showScore()
  {
    fill(255, 255, 255);
    text("Score: "+score++,displayWidth/2,(displayHeight/2)+20);
  }
}