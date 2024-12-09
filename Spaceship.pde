class Spaceship extends Floater { 
  {
    corners = 16;
    xCorners = new int[]{-14, -6, 2, -2, 0, 2, -2, 2, 16, 1, -6, -14, -10, -14, -10, -14};
    yCorners = new int[]{14, 10, 6, 4, 12, 12, -4, 6, 0, -6, -10, -14, -6, -2, 6, 14};
    myCenterX = width / 2;
    myCenterY = height / 2;
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 12; 
    myColor = color(130, 160, 190);
  }
}
