import 'package:flutter/material.dart';
import 'package:school_app/schoolmanagmentapp/Utils/colors.dart';
import 'package:school_app/screens/app_home_page.dart';

class SchoolManangmentScreenState extends StatefulWidget {
  const SchoolManangmentScreenState({super.key});

  @override
  State<SchoolManangmentScreenState> createState() =>
      _SchoolManangmentScreenStateState();
}

class _SchoolManangmentScreenStateState
    extends State<SchoolManangmentScreenState> {
  int selectedIndex = 0;
  final List pages = [
    const AppHomePage(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
    const Scaffold(),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        backgroundColor: kBackground,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.insert_chart,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.done,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.calendar_today,
              ),
              label: ""),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.chat_bubble,
              ),
              label: ""),
        ],
      ),
      body: pages[selectedIndex],
    );
  }
}
