class TimeLine {
    HashMap<String, Float> timeToY = new HashMap<String, Float>();
    
    void drawTimeLine() {
        stroke(80);
        strokeWeight(15);
        line(0, 0, 0, 1008);
        

        for (int y = 0; y <= 1008; y++) {
            if (y == 0 || y == 1008) {
                strokeWeight(10);
                line(0, y, 50, y);
                // if (y == 0) {
                //     fill(0);
                //     textSize(20);
                //     text("00:00", width/2, height/2, 500, 500);
                // } else {
                //     text("12:00", 998, y - 10, 50, 50);
                // }
            } else if (y % 84 == 0) {
                strokeWeight(5);
                line(0, y, 40, y);
            } else if (y % 42 == 0 && y != 84) {
                strokeWeight(4);
                line(0, y, 30, y);
            } else if (y % 21 == 0 && y != 84 && y != 42) {
                strokeWeight(3);
                line(0, y, 20, y);
            }
        }
    }
}