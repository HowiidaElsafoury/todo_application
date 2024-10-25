import 'package:calendar_timeline/calendar_timeline.dart';
import 'package:flutter/material.dart';
import 'package:todo_application/layouts/bottom_sheet_widget.dart';
import 'package:todo_application/pages/home/home_view.dart';
import 'package:todo_application/pages/settings/settings_view.dart';

class HomeLayout extends StatefulWidget {
  static String routeName = "home_layout";
  HomeLayout({super.key});

  @override
  State<HomeLayout> createState() => _HomeLayoutState();
}

class _HomeLayoutState extends State<HomeLayout> {
  int selectedIndex = 0;

  List<Widget> Pages = [
    HomeView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: Pages[selectedIndex],
      floatingActionButton: GestureDetector(
        onTap: () {
          showAddTaskBottomSheet();
        },
        child: Container(
          padding: EdgeInsets.all(4),
          decoration:
              BoxDecoration(shape: BoxShape.circle, color: Colors.white),
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: theme.primaryColor,
            ),
            child: Icon(
              Icons.add,
              color: Colors.white,
              size: 32,
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      extendBody: true,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 8,
        child: Wrap(
          children: [
            BottomNavigationBar(
              currentIndex: selectedIndex,
              onTap: (value) {
                setState(() {
                  selectedIndex = value;
                });
              },
              type: BottomNavigationBarType.fixed,
              items: [
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage(
                        "assets/images/Icon awesome-list.png",
                      ),
                    ),
                    label: "menu"),
                BottomNavigationBarItem(
                    icon: ImageIcon(
                      AssetImage("assets/images/Icon feather-settings.png"),
                    ),
                    label: "settings"),
              ],
            ),
          ],
        ),
      ),
    );
  }

  void showAddTaskBottomSheet() {
    showModalBottomSheet(
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(22),
          topRight: Radius.circular(22),
        )
      ),
      builder: (context) => BottomSheetWidget(),
    );
  }
}
