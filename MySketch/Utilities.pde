void timeTextMaker(int h, int m, float x, float y, int textS) {
    if (h < 10 && m < 10) {
        textSize(textS);
        text("0" + h + ":" + "0" + m, x, y);
    } else if (h < 10 && m >= 10) {
        textSize(textS);
        text("0" + h + ":" + m, x, y);
    } else if (h >= 10 && m < 10) {
        textSize(textS);
        text(h + ":" + "0" + m, x, y);
    } else {
        textSize(textS);
        text(h + ":" + m, x, y);
    }
}

// PShape getNewShape(String shape) {
//     if (shape == "triangle") {
//         PShape triangle = createShape(TRIANGLE, 100, 100, 50, 150, 200, 100);
//         return triangle;
//     }
//     return null;
// }

Table getTable() {
    Table table = loadTable("data/sleep_regime_tracking.csv", "header");
    return table;
}

