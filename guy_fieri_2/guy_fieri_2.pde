//Guy Fieri is a Good Person

int time; 
int stopTime; 
PImage guy; 
PImage guy2; 
PImage guy3; 
boolean button = false; 
boolean button2 = false; 

void setup() { 
  size(500,500);  
  guy = loadImage("guy.png"); 
  guy2 = loadImage("guy2.jpg"); 
  guy3 = loadImage("guy3.jpg"); 
} 

void draw() { 
  background(0); 
  
  //the good stuff
  imageMode(CENTER); 
  image(guy,250,250); 
  
  text("How long will it take you to love Guy Fieri?",20,20); 
  text("When you love him, click him!",20,40); 
  time = millis(); 
  
  if(button){ 
    text("It took you",20,420);
    text(stopTime/1000,20,440); 
    text("second(s) to love Guy Fieri!",20,460); 
    imageMode(CENTER); 
    image(guy2,250,250); 
    text("Guy Fieri smiles at your love! Flavor Town welcomes you!",20,480);
  }
  
  if(button2){ 
    text("It took you",20,420);
    text(stopTime/1000,20,440); 
    text("seconds to love Guy Fieri!",20,460); 
    imageMode(CENTER); 
    imageMode(CENTER); 
    image(guy3,250,250); 
    text("Your hesitance in love has saddended Guy Fieri!",20,480);
    text("You will never make it in Flavor Town!",20,495); 
  }
  
}
  
  void mousePressed(){ 
    
  if(mousePressed && time <= 3000){ 
    button = !button; 
    stopTime = time; 
  }
  
  if(mousePressed && time >= 3000){
    button2 = !button2;
    stopTime = time; 
  }
 
}