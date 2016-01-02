/* Michael B. Kulik
 *
 * dot clock simulator
 *
 */

/* setup function */
void setup() {
  size(400, 125);
  surface.setTitle("Dot Clock Simulator");
}

/* draw function */
void draw() {
  background(150);
  int hour = hour() % 12;
  int tens = minute() / 10;
  int ones = minute() % 10;
  
  // hours
  pushMatrix();
  fill(255,0,0);
  translate(25,25);
  switch(hour) {
    case 1:
      one();
      break;
    case 2:
      two();
      break;
    case 3:
      three();
      break;
    case 4:
      four();
      break;
    case 5:
      five();
      break;
    case 6:
      six();
      break;
    case 7:
      seven();
      break;
    case 8:
      eight();
      break;
    case 9:
      nine();
      break;
    case 10:
      ten();
      break;
    case 11:
      eleven();
      break;
    default:
      twelve();
      break;
  }
  popMatrix();
  
  //minutes tens
  pushMatrix();
  fill(255,255,0);
  translate(175,25);
  switch(tens) {
    case 1:
      one();
      break;
    case 2:
      two();
      break;
    case 3:
      three();
      break;
    case 4:
      four();
      break;
    case 5:
      five();
      break;
    default:
      break;
  }
  popMatrix();
  
  //minutes ones
  pushMatrix();
  fill(0,0,255);
  translate(320,25);
  switch(ones) {
    case 1:
      one();
      break;
    case 2:
      two();
      break;
    case 3:
      three();
      break;
    case 4:
      four();
      break;
    case 5:
      five();
      break;
    case 6:
      six();
      break;
    case 7:
      seven();
      break;
    case 8:
      eight();
      break;
    case 9:
      nine();
      break;
    default:
      break;
  }
  popMatrix();
 
}