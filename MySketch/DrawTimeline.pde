class TimeLine {
    HashMap<String, Float> timeToY = new HashMap<String, Float>();
    
    void drawLeftTimeLine() {
        stroke(80);
        strokeWeight(15);
        line(0, 0, 0, 1008); 

        for (int minute = 0; minute <= 720; minute++) {
            float y = minute * 1.4;

            int hours = minute / 60;
            int minutes = minute % 60;
            if (minute == 0 || minute == 720) {
                strokeWeight(10);
                line(0, y, 50, y);
                if (minute == 0) {
                    fill(0);
                    textSize(20);
                    text("00:00", 60, y + 12.5);

                } else {
                    textSize(20);
                    text("12:00", 60, y - 12.5);
                }
            } else if (minute % 60 == 0) {
                strokeWeight(5);
                line(0, y, 40, y);
                timeTextMaker(hours, minutes, 45., y, 14);
            } else if (minute % 30 == 0) {
                strokeWeight(4);
                line(0, y, 30, y);
                timeTextMaker(hours, minutes, 32.5, y, 11);
            } else if (minute % 15 == 0) {
                strokeWeight(3);
                line(0, y, 20, y);
                timeTextMaker(hours, minutes, 22.5, y, 9);
            } else {
                strokeWeight(0.45);
                line(0, y, 13.5, y);
            }
            timeToY.put(hours + ":" + minutes, y);
            if (minutes < 60) {
                minutes += 1;
            } else {
                minutes = 0;
                hours += 1;
            }
        }
    }

    void drawRightTimeLine() {
        stroke(80);
        strokeWeight(15);
        line(width, 0, width, 1008); 

        for (int minute = 0; minute <= 720; minute++) {
            float y = minute * (1008.0 / 718.0);

            int hours = 12 + (minute / 60);
            int minutes = 1 +  (minute % 60);
            if (minute == 0 || minute == 720) {
                strokeWeight(10);
                line(width, y, width - 50, y);
                if (minute == 0) {
                    fill(0);
                    textSize(20);
                    text("12:01", width - 100, y + 12.5);

                } else {
                    textSize(20);
                    text("23:59", width - 100, y - 12.5);
                }
            } else if (minute % 60 == 0) {
                strokeWeight(5);
                line(width, y, width - 40, y);
                timeTextMaker(hours, minutes, width - 75., y, 14);
            } else if (minute % 30 == 0) {
                strokeWeight(4);
                line(width, y, width - 30, y);
                timeTextMaker(hours, minutes, width - 60., y, 11);
            } else if (minute % 15 == 0) {
                strokeWeight(3);
                line(width, y, width - 20, y);
                timeTextMaker(hours, minutes, width - 45., y, 9);
            } else {
                strokeWeight(0.45);
                line(width, y, width - 13.5, y);
            }
            timeToY.put(hours + ":" + minutes, y);
            if (minutes < 60) {
                minutes += 1;
            } else {
                minutes = 0;
                hours += 1;
            }
        }
    }
    
    void printHashMap() {
        for (String i : timeToY.keySet()) {
            println(i + "|" + timeToY.get(i));
        }
    }
}