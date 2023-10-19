germ [] bob;
void setup(){
  size(500,500);
  bob = new germ[100];
  for(int i = 0; i < bob.length; i++){
    bob[i] = new germ();
  }
}

void draw(){
  background(255);
  for(int i = 0; i < bob.length; i++){
    bob[i].show();
    bob[i].move();
  }
}

class germ{
    int myX;
    int myY;
    int mysize;
    int mycolor;
   
    germ()
    {
      myX = (int)(Math.random() * 500);
      myY = (int)(Math.random() * 500);
      mysize = (int)(Math.random() * 15) + 6;
      mycolor = color((int)(Math.random() * 256),(int)(Math.random() * 256),(int)(Math.random() * 256));
    }
   
    void move(){
      if(myX < 500 || myX > 0 && myY < 500 || myY > 0){
        if(mouseX > myX){
          myX = myX + (int)(Math.random() * 9) - 2;
        }
        else{
          myX = myX + (int)(Math.random() * 9) - 6;
        }
        if(mouseY > myY){
          myY = myY + (int)(Math.random() * 9) - 2;
        }
        else{
          myY = myY + (int)(Math.random() * 9) - 6;
        }
      }
      else{
         myX = myX + (int)(Math.random() * 5) - 2;
         myY = myY + (int)(Math.random() * 5) - 2;
      }
     
    }
   
    void show(){
      fill(mycolor);
      ellipse(myX, myY, mysize, mysize);
    }
}
