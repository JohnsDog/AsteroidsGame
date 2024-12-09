Stars [] star;
Floater spaceship; 
boolean right = false;
boolean left = false;
boolean move = false;
boolean hyperspace = false;
void setup(){          
 size(600, 600); 
 frameRate(120);
 spaceship = new Spaceship(); 
 star = new Stars[250];
 for(int i = 0; i < star.length; i ++){
  star[i] = new Stars(); 
 }
 }

void draw(){
  int i = 0;
  background(0);
   while(i < star.length){
   star[i].show(); 
   i++;
  }
  spaceship.show();
  spaceship.move();
   if(right == true){
   spaceship.myPointDirection = spaceship.myPointDirection + 1;
 } 
   if(left == true){
   spaceship.myPointDirection = spaceship.myPointDirection - 1;     
   }
   if(move == true){
     spaceship.accelerate(0.01);
     spaceship.accelerate(0.01);
   }
}

void keyPressed(){
 if(key == 'd'){
   right = true;
 }
 if(key == 'a'){
   left = true; 
 }
 if(key == 'q'){
  background(0);
 }
 if(key == 'w'){
   move = true;
 }
}

void keyReleased(){
  if(key == 'd'){
    right = false;
  }
  if(key == 'a'){
     left = false; 
  }
  if(key == 'q'){
    spaceship.myCenterX = Math.random() * width + 1;
    spaceship.myCenterY = Math.random() * width + 1;
    spaceship.myXspeed = 0;
    spaceship.myYspeed = 0;
  }
  if(key == 'w'){
    move = false;
  }
}
