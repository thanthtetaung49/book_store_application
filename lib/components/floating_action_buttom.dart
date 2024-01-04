import 'package:flutter/material.dart';

class MyFloatingActionButton extends StatefulWidget {

  const MyFloatingActionButton({super.key});

  @override
  State<MyFloatingActionButton> createState() => _MyFloatingActionButtonState();
}

class _MyFloatingActionButtonState extends State<MyFloatingActionButton> {

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const CircleBorder(),
      backgroundColor: Colors.pinkAccent,
      foregroundColor: Colors.white,
      onPressed: () {
        
      },
      child: const Icon(Icons.bookmark_add_outlined),
    );
  }
}