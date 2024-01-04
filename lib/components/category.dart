import 'package:book_store/components/button_navigation_bar.dart';
import 'package:book_store/components/floating_action_buttom.dart';
import 'package:flutter/material.dart';

class SavePdfFile extends StatefulWidget {
  const SavePdfFile({super.key});

  @override
  State<SavePdfFile> createState() => _SavePdfFileState();
}

class _SavePdfFileState extends State<SavePdfFile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Flutter Service")),
      floatingActionButton: const MyFloatingActionButton(),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: const BookStoreBottomNavigationBar(),
      body: ListView(
        children: [
          Text("data")
        ],
      ),
    );
  }
}
