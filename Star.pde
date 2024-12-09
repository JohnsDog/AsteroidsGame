class Stars{
  private int myX, myY, mySize;
  Stars(){
     myX = (int) (Math.random() * width);
     myY = (int) (Math.random() * height);
     mySize = (int) (Math.random() * 5);
  }
  
  void show(){
    fill(255);
    ellipse(myX, myY, mySize, mySize); 
  }
}
