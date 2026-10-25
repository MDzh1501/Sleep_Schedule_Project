class SleepArrowIllustrator {
    SleepArrowIllustrator() {}

    void drawArrow(NewArrow arrow, HashMap<String, Float> timeToY) {
        float x = random(150, width - 150);
        float startY = timeToY.get(arrow.timeIWentToSleep);
        float endY = timeToY.get(arrow.timeIWokeUp);
        float totalScreenY = timeToY.get(arrow.timeScreenTime);
        float timeSpentOnOtherY = timeToY.get(arrow.timeSpentOnOtherActivities);
        String date = arrow.date;
        String totalSleep = arrow.totalAmountOfSleep;
        String temperature = arrow.temperature;
        boolean anyScreen = arrow.anyScreenTimeBefore;
        boolean alarmUsed = arrow.alarmUsed;
        int ratingGood = arrow.howGoodIFeel;
        int ratingBad = arrow.howBadIFeel;
        PVector vector;
        color vecColor;

        // Drawing part
        // 1. Draw illustrations for TimeScreenTime and TimeSpentOnOtherActivities
        if (anyScreen) {
            // 1.1 Let's draw TimeScreemTime rectangle from 00:00 to totalScreenY
            fill(92, 92, 138);
            rect(x, timeToY.get("12:00"), 20, totalScreenY, 20);
            // 1.2 Do similar thing for TimeSpentOnOtherActivities from totalScreenY to timeSPentonOtherY
            fill(0, 102, 102);
            rect(x, totalScreenY, 20, timeSpentOnOtherY, 20);
        }

        // 2. Drawing vectors from one point to the other. Setting up their attributes
        strokeWeight(2.5);
        switch (temperature) {
            case "cold":
                vecColor = color(0, 0, 153);
                break;
            case "cool":
                vecColor = color(51, 204, 255);
                break;
            case "warm":
                vecColor = color(255, 153, 51);
                break;
            case "hot":
                vecColor = color(255, 51, 51);
                break;
            default:
                vecColor = color(241, 241, 193);
        }
        stroke(vecColor);
        // if (arrow.timeIWentToSleep )


        // 3. Create all settings and attributes for the endpoint. Part when we will create it        


    }
    // void createArrow(float startX, float startY, float endX, float endY, color c, PShape endsShape, boolean alarm) {
    //     PVector vector1, vector2;
        
    //     fill(c);
        
    //     vector1 = new PVector(startX, startY);
    //     vector2 = new PVector(endX, endY);
        
    //     line(vector1.x, vector1.y, vector2.x, vector2.y);
    //     if (alarm)
    //         endsShape.setStroke(color(0, 225, 35));
    //     else
    //         endsShape.setStroke(color(245, 0, 10));
        
    //     endsShape.setStrokeWeight(1.5);
        
        
    //     println(startX + endsShape.width / 2, startY + endsShape.height / 2);

    //     // In future: if time goes from 12:00 to 12:01 and beyond,
    // // make an arrow that has some figure at vector1.x and vector1.y.

    //     shape(endsShape, endX, endY);
    // }
}
// PVector v1, v2;

// void setup() {
//   noLoop();
//   v1 = new PVector(40, 20);
//   v2 = new PVector(25, 50); 
// }

// void draw() {
//   ellipse(v1.x, v1.y, 12, 12);
//   ellipse(v2.x, v2.y, 12, 12);
//   v2.add(v1);
//   ellipse(v2.x, v2.y, 24, 24);
// }

// PShape square;  // The PShape object

// void setup() {  
//   size(100, 100);
//   // Creating the PShape as a square. The corner 
//   // is 0,0 so that the center is at 40,40 
//   square = createShape(RECT, 0, 0, 80, 80);
// }

// void draw() {
//   shape(square, 10, 10);
// }