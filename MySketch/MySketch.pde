void setup() {
    size(1700, 1008);
    background(250);
}

void draw() {
    TimeLine timeline = new TimeLine();
    timeline.drawLeftTimeLine();
    timeline.drawRightTimeLine();
    timeline.printHashMap();
    
    frameRate(0);
}
