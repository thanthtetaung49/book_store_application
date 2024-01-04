import 'package:book_store/components/drawer_menu.dart';
import 'package:book_store/components/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';

class DrawerScreen extends StatefulWidget {

  const DrawerScreen({super.key});

  @override
  State<DrawerScreen> createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  final zoomDrawerController = ZoomDrawerController();

  @override
  Widget build(BuildContext context) {
    return ZoomDrawer(
      controller: zoomDrawerController,
      menuScreen: const MenuScreen(),
      mainScreen: const HomePage(),
      borderRadius: 24.0,
      showShadow: true,
      angle: -12.0,
      drawerShadowsBackgroundColor: Colors.grey,
      slideWidth: MediaQuery.of(context).size.width * 0.65,
    );
  }
}
