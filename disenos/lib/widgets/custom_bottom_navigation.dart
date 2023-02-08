import 'package:flutter/material.dart';

class CustomBottomNavigation extends StatelessWidget {
  const CustomBottomNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      //showSelectedLabels: false,
      elevation: 0,
      showUnselectedLabels: false,
      selectedItemColor: Colors.pink,
      backgroundColor: const Color.fromRGBO(55, 57, 84, 1),
      unselectedItemColor: const Color.fromRGBO(116, 117, 152, 1),
      currentIndex: 0,
      items: const [
        BottomNavigationBarItem(
          label: 'Calendar',
          icon: Icon(Icons.calendar_today_outlined),
        ),
        BottomNavigationBarItem(
          label: 'Graph',
          icon: Icon(Icons.graphic_eq_rounded),
        ),
        BottomNavigationBarItem(
          label: 'User',
          icon: Icon(Icons.supervised_user_circle_rounded),
        )
      ],
    );
  }
}
