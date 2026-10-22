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