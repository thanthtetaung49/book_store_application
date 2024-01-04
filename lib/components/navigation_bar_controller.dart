import 'package:book_store/components/button_navigation_bar.dart';
import 'package:book_store/components/category.dart';
import 'package:book_store/components/home_page.dart';
import 'package:book_store/components/registeration_book.dart';
import 'package:flutter/material.dart';
import 'package:book_store/components/floating_action_buttom.dart';
import 'package:book_store/class/application_variable_class.dart';

class NavigationBarController extends StatefulWidget {
  const NavigationBarController({super.key});

  @override
  State<NavigationBarController> createState() => _NavigationBarControllerState();
}

class _NavigationBarControllerState extends State<NavigationBarController> {
  final List<Widget> _pages = [
    const HomePage(),
    const SavePdfFile(),
    const SaveImageDemoSQLite()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      floatingActionButton: const MyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BookStoreBottomNavigationBar(),
      body: PageView(
        children: _pages,
        onPageChanged: (int index) {
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
