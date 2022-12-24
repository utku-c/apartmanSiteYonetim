import 'package:flutter/material.dart';
import 'package:flutter_zoom_drawer/config.dart';
import 'package:flutter_zoom_drawer/flutter_zoom_drawer.dart';
import '../../constant/constant.dart';
import 'widgets/anasayfa/home_screen.dart';
import 'widgets/menu/menu_screen.dart';

class MyZoomDrawer extends StatefulWidget {
  const MyZoomDrawer({Key? key}) : super(key: key);
  static String routeName = "/myZoomHomePage";

  @override
  State<MyZoomDrawer> createState() => _MyZoomDrawerState();
}

class _MyZoomDrawerState extends State<MyZoomDrawer> {
  final drawerController = ZoomDrawerController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ZoomDrawer(
        controller: drawerController,
        menuScreen: const MenuScreen(),
        mainScreen: HomeScreen(drawerController),
        borderRadius: 24.0,
        showShadow: true,
        angle: 0.0,
        menuBackgroundColor: kMyBackgroundColor,
        slideWidth: MediaQuery.of(context).size.width * 0.60,
        openCurve: Curves.fastOutSlowIn,
        closeCurve: Curves.bounceIn,
      ),
    );
  }
}
