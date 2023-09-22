int startX = (int)(Math.random()*360)+240;
int startY = 315;


void setup(){
size(750,750);
strokeWeight(5);
background(0);
frameRate(30);
drawMonitor();
}

void drawMonitor(){
    strokeWeight(5);
   fill(255,255,255);
   rect(200, 720, 400,30);
   rect(345,710, 100, 20);
   rect(372, 615, 45, 100);
   rect(140, 290, 500, 400);
   fill(150,180,355);
   rect(160, 310, 460, 350);
   // monitor set up
   
   fill(0,200,255);
   strokeWeight(5);
   ellipse(163,675, 10, 10);
   fill(200,200,200);
   ellipse(178,675,10,10);
   ellipse(193, 675, 10,10);
   //monitor buttons
   
}

void draw(){
 
   
   int endX = startX + ((int)(Math.random()*40))-20;
  int endY = startY + (int)(Math.random()*20);
   if(mousePressed == true){
   stroke(0);
   strokeWeight(5);
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY; 
   
   }
    //random lightning code + conditional
    

      if (endY > 645 || endX < 160 || endX > 600) {
     startY = 315;
     startX = (int)(Math.random()*360)+240;
     //reset lightning when it goes off screen
      }
      
     if (keyPressed == true){
        stroke(0);
        strokeWeight(5);
       drawMonitor();
       //reset cracks/ lightning when any key on keyboard is pressed
     }
   
 
}





