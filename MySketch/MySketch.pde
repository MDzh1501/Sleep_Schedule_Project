Table table;
ArrayList<NewArrow> arrows;

void setup() {
    size(1700, 1008);
    background(250);
    rectMode(CENTER);

    table = getTable();
    arrows = initArrows(table);
}

void draw() {
    TimeLine timeline = new TimeLine();
    timeline.drawLeftTimeLine();
    timeline.drawRightTimeLine();
    timeline.printHashMap();

    strokeWeight(1);


    SleepArrowIllustrator sac = new SleepArrowIllustrator();
    ArrayList<NewArrow> arrows = initArrows(table);
    
    for (NewArrow arrow : arrows) {
        sac.drawArrow(arrow, timeline.timeToY);
    }
    // PShape newSquare = createShape(RECT, 0, 0, 50, 50);
    // // PShape newTriangle = getNewShape("triangle");
    // color endsColor = color(120, 80, 10);
    // sac.createArrow(115, 0, 115, 550, endsColor, newSquare, true);
    
    frameRate(0);
}
