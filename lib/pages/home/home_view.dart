import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_application/pages/home/task_item_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Column(
      children: [
        Stack(
          alignment: Alignment(0, 2.5),
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 60),
              color: theme.primaryColor,
              width: double.infinity,
              height: 170,
              child: Text(
                "TO DO List",
                style: theme.textTheme.titleLarge,
              ),
            ),
            CalendarTimeline(
              initialDate: DateTime.now(),
              firstDate: DateTime.now(),
              lastDate: DateTime.now().add(
                Duration(days: 365),
              ),
              onDateSelected: (date) => print(date),
              leftMargin: 20,
              monthColor: Colors.black,
              dayColor: Colors.black,
              activeDayColor: theme.primaryColor,
              activeBackgroundDayColor: Colors.white,
              dotColor: theme.primaryColor,
              selectableDayPredicate: (date) => date.day != 0,
              locale: 'en_ISO',
            ),
          ],
        ),
        SizedBox(
          height: 55,
        ),
        Expanded(
          child: ListView.builder(
            padding: EdgeInsets.zero,
            itemBuilder:(context, index) => TaskItemWidget(),
            itemCount: 20,


          ),
        ),
      ],
    );
  }
}
