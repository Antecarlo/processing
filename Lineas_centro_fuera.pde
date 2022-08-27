
void setup() {
  fullScreen();
}

int timer = millis();
int i = 0;

// Pre-defined colors
color c1 = #ABDBE3;
color c2 = #eab676;
color c3 = #154c79;

// Colors array
color[] colorArray = {c1, c2, c3};

void draw(){
  
  // Random number
  int randomNumber = int(random(0, 2));
  int[] auxHeight = {0, height};
  int[] auxWidth = {0, width};
  
  // Line width
  strokeWeight(3);
 
  // If one second is over
  if(millis() - timer >= 1000){
    if(i==2){
      i = 0;
    } else{
      i++;
    }
    timer = millis();
  }
  
  
  stroke(colorArray[i]);
  line(width/2, height/2, random(width), auxHeight[randomNumber]); 
  line(width/2, height/2, auxWidth[randomNumber], random(height)); 
  line(width/2, height/2, random(width), auxHeight[randomNumber]); 
  line(width/2, height/2, auxWidth[randomNumber], random(height)); 
  line(width/2, height/2, random(width), auxHeight[randomNumber]); 
  line(width/2, height/2, auxWidth[randomNumber], random(height)); 
  line(width/2, height/2, random(width), auxHeight[randomNumber]); 
  line(width/2, height/2, auxWidth[randomNumber], random(height));
}
