import 'package:book_store/components/category.dart';
import 'package:book_store/components/navigation_bar_controller.dart';
import 'package:book_store/components/registeration_book.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const NavigationBarController(),
        '/register/book': (context) => const SaveImageDemoSQLite(),
        '/category': (context) => const SavePdfFile(),
      },
    );
  }
}
