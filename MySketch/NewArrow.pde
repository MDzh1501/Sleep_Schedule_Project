class NewArrow {
    String date, typeOfSleep, timeIWentToSleep, timeIWokeUp, totalAmountOfSleep, timeScreenTime, timeSpentOnOtherActivities, temperature;
    boolean anyScreenTimeBefore, alarmUsed;
    int howGoodIFeel, howBadIFeel;
    
    NewArrow() {} 

    
}

ArrayList<NewArrow> initArrows(Table table) {
    ArrayList<NewArrow> arrows = new ArrayList();

    for (TableRow row : table.rows()) {
        NewArrow arrow = new NewArrow();

        arrow.date = row.getString("Date");
        arrow.typeOfSleep = row.getString("TypeOfSleep");
        arrow.timeIWentToSleep = row.getString("TimeIWentToSleep");
        println(arrow.timeIWentToSleep);
        arrow.timeIWokeUp = row.getString("TimeIWokeUp");
        arrow.totalAmountOfSleep = row.getString("TotalAmountOfTime");
        arrow.timeScreenTime = row.getString("TimeScreenTime");
        arrow.timeSpentOnOtherActivities = row.getString("TimeSpentOnOtherActivities");
        arrow.temperature = row.getString("TemperatureInRoom");

        arrow.anyScreenTimeBefore = row.getInt("AnyScreenTimeBefore") == 1;
        arrow.alarmUsed = row.getInt("AlarmUsed") == 1;

        arrow.howGoodIFeel = row.getInt("HowGoodIFeelAfter");
        arrow.howBadIFeel = row.getInt("HowBadIFeel");

        arrows.add(arrow);
    }
    return arrows;
};

// void mouseClicked() {
//     for (NewArrow arrow : arrows) {
//         if (arrow.isMouseOver()) {
//             arrow.onClick();
//             break;
//         }
//     }
// }