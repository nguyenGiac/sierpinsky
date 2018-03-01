PVector rando;
PVector pos1;
PVector pos2;
PVector pos3;
int countDown;


void setup(){
  size(1000,1000);
  pos1 = new PVector(0,0);
  pos2 = new PVector(width,0);
  pos3 = new PVector(0,height);
  rando = new PVector((int)random(0,width/2-10),(int)random(0,height/2-10));
  ellipse(pos1.x,pos1.y,1,1);
  ellipse(pos2.x,pos2.y,1,1);
  ellipse(pos3.x,pos3.y,1,1);
}

void draw(){
  countDown = 1000;
  fill(255,10);
  rect(0,0,width,height);
  sierp(rando);
  saveFrame("sierp/####.tif");
}

void sierp(PVector filler){
 countDown--;
 ellipse(filler.x,filler.y,1,1);
 int randomNum = (int)random(0,3); 
 if(countDown > 0){
 
   if(randomNum == 0){
     filler.x=(pos1.x+filler.x)/2;
     filler.y=(pos1.y+filler.y)/2;
     //alternatively, I could use the linear interpolation function "lerp()"
     //lerp(filler,pos1,.5);
     ellipse(filler.x,filler.y,1,1);
     sierp(filler);
   } 
   
   if(randomNum == 1){
     filler.x=(pos2.x+filler.x)/2;
     filler.y=(pos2.y+filler.y)/2;
     //lerp(filler,pos2,.5);
     ellipse(filler.x,filler.y,1,1);
     sierp(filler);
   }
   
   if(randomNum == 2){
     filler.x=(pos3.x+filler.x)/2;
     filler.y=(pos3.y+filler.y)/2;
     //lerp(filler,pos3,.5);
     ellipse(filler.x,filler.y,1,1);
     sierp(filler);
   }
 }
}
