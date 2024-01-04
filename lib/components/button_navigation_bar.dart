import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:book_store/class/application_variable_class.dart';

class BookStoreBottomNavigationBar extends StatefulWidget {
  const BookStoreBottomNavigationBar({super.key});

  @override
  State<BookStoreBottomNavigationBar> createState() =>
      _BookStoreBottomNavigationBarState();
}

class _BookStoreBottomNavigationBarState
    extends State<BookStoreBottomNavigationBar> {

  @override
  Widget build(BuildContext context) {
    return AnimatedBottomNavigationBar(
      icons: iconList,
      activeIndex: selectedIndex,
      gapLocation: GapLocation.center,
      notchSmoothness: NotchSmoothness.verySmoothEdge,
      activeColor: activeNavigationBarColor,
      backgroundColor: backgroundColor,
      splashColor: splashColor,
      leftCornerRadius: 32,
      rightCornerRadius: 32,
      onTap: (int index) {
        setState(() {
          selectedIndex = index;
        });
        switch (index) {
          case 0:
            Navigator.pushReplacementNamed(context, '/');
            break;
          case 1:
            Navigator.pushReplacementNamed(context, '/category');
            break;
          case 2:
            Navigator.pushReplacementNamed(context, '/register/book');
            break;
          default:
            break;
        }
      },
    );
  }
}
