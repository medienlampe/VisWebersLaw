int maxSteps;
int iterator = 1;
float previousX;
float initialWidth;

void setup(){
  size(1800, 100);
  background(0);

  // Age
  maxSteps = 84;
  initialWidth = width/8;
  colorMode(HSB, maxSteps, 100, 100);

  previousX = 0;
}

void draw(){
  float currentX;

  while (iterator < maxSteps) {
    currentX = initialWidth/iterator;

    fill(iterator,100,100);
    rect(previousX, 0, currentX, height);
    previousX = previousX + currentX;
    iterator++;
  }

  println("Felt length of life: " + (previousX/width) * maxSteps);
}
