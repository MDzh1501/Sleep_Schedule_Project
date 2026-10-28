class SleepArrowIllustrator {
    SleepArrowIllustrator() {}

    void drawArrow(NewArrow arrow, HashMap<String, Float> timeToY) {
        println("Sleep start: " + arrow.timeIWentToSleep);
        println("Wake up: " + arrow.timeIWokeUp);
        println("Screen time: " + arrow.timeScreenTime);
        println("Other activities: " + arrow.timeSpentOnOtherActivities);

        println(timeToY.containsKey(arrow.timeIWentToSleep));
        println(timeToY.containsKey(arrow.timeIWokeUp));
        println(timeToY.containsKey(arrow.timeScreenTime));
        println(timeToY.containsKey(arrow.timeSpentOnOtherActivities));
        float x = random(150, width - 150);
        println(arrow.timeIWentToSleep, timeToY.get(arrow.timeIWentToSleep));
        print(arrow.timeIWentToSleep == arrow.timeIWentToSleep);
        float startY = timeToY.get(arrow.timeIWentToSleep);
        float endY = timeToY.get(arrow.timeIWokeUp);
        float totalScreenY = timeToY.get(arrow.timeScreenTime);
        float timeSpentOnOtherY = timeToY.get(arrow.timeSpentOnOtherActivities);
        // String date = arrow.date;
        String typeOfSleep = arrow.typeOfSleep;
        // String totalSleep = arrow.totalAmountOfSleep;
        String temperature = arrow.temperature;
        boolean anyScreen = arrow.anyScreenTimeBefore;
        boolean alarmUsed = arrow.alarmUsed;
        int ratingGood = arrow.howGoodIFeel;
        int ratingBad = arrow.howBadIFeel;
        PVector vector;
        color vecColor, shapeColor;

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
        // Splititng time strings, e.g. 08:17 into separate lists when I went to bed and when I woke up, respectively
        String[] asleep = split(arrow.timeIWentToSleep, ":");
        // Type casting elements recieved from string literals to integers (looked up on Google)
        int hour_asleep = Integer.parseInt(asleep[0]);
        int min_asleep = Integer.parseInt(asleep[1]);

        String[] wokeUp = split(arrow.timeIWokeUp, ":");
        int hour_woke = Integer.parseInt(wokeUp[0]);
        int min_woke = Integer.parseInt(wokeUp[1]);

        // Calculating minutes 
        int start_minutes = hour_asleep * 60 + min_asleep;
        int end_minutes = hour_woke * 60 + min_woke;

        // Scheme goes like this: if I went to sleep before noon (e.g. 02:12 => less than 720 minutes) and woke up after it (e.g. 12:12 => more than 720),
        // then draw the line till "12:00" y-coordinates without endpoint, 
        // and start drawing another vector "on top" of the previous from "12:01"
        if (start_minutes < 720 && end_minutes > 720) {
            vector = new PVector(startY, timeToY.get("12:0"));
            line(x, vector.x, x, vector.y);
            vector = new PVector(timeToY.get("12:1"), endY);
            line(x, vector.x, x, vector.y);
            // Add a tracing line (left-to-right) that will point visually exact time where it stopped
            strokeWeight(1);
            line(x, vector.y, width, vector.y);
        } else {
            vector = new PVector(startY, endY);
            line(x, vector.x, x, vector.y);
            strokeWeight(1);
            if (start_minutes > 720 && end_minutes > 720)
                line(x, vector.y, width, vector.y);
            else
                line(x, vector.y, 0, vector.y); // Tracing line, but right-to-left
        }

        // 3. Create all settings and attributes for the endpoint. Draw it after.
        strokeWeight(3);
        switch (ratingGood - ratingBad) {
            case 2:
                shapeColor = color(0, 102, 0);
                break;
            case 1:
                shapeColor = color(143, 239, 143);
                break;
            case -1:
                shapeColor = color(115, 115, 115);
                break;
            case -2:
                shapeColor = color(0);
                break;
            default:
                shapeColor = color(255);
        }
        if (alarmUsed) 
            stroke(77, 255, 77);
        else
            stroke(255, 0, 0);
        fill(shapeColor);
        switch (typeOfSleep) {
            case "Interrupted sleep":
                rect(x, vector.y, 50, 50);
                break;
            case "Catch-up sleep":
                rect(x, vector.y, 50, 50, 15);
                break;
            case "Nap":
                ellipse(x, vector.y, 100, 65);
                break;
            default:
                circle(x, vector.y, 45);
        }
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