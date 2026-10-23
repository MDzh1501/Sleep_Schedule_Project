Table table;

void setup() {
    size(1700, 1008);
    background(250);

    table = loadTable("data/sleep_regime_tracking.csv", "header");
}

void draw() {
    TimeLine timeline = new TimeLine();
    timeline.drawLeftTimeLine();
    timeline.drawRightTimeLine();
    timeline.printHashMap();

    strokeWeight(1);
    

    SleepArrowCreator sac = new SleepArrowCreator();
    PShape newSquare = createShape(RECT, 0, 0, 85, 85);
    color endsColor = color(120, 80, 10);
    sac.createArrow(100, 100, 100, 550, endsColor, newSquare, true);
    
    frameRate(0);
}
