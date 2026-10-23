class SleepArrowCreator {
    SleepArrowCreator() {}

    void createArrow(float startX, float startY, float endX, float endY, color c, PShape endsShape, boolean alarm) {
        PVector vector1, vector2;
        vector1 = new PVector(startX, startY);
        vector2 = new PVector(endX, endY);
        
        fill(c);
        shape(endsShape, vector1.x, vector1.y);
        line(vector1.x, vector1.y, vector2.x, vector2.y);
        if (alarm)
            stroke(0, 225, 35);
        else
            stroke(245, 0, 10);
        strokeWeight(1.5);
        shape(endsShape, vector2.x, vector2.y);

        /* In future: if (time goes from < 12:00 to 12:01 and more) {
            make an arrow that has some figure on the vector1.x and y;
            make it go till 12:00. And make it not to generate any end but a special sign of continuation;
            then, start a new line with the same delimeter and generate another figure on the end of it;
            x must be += 10 in the middle of all of this.
        } */
    }
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