import 'package:admin_panel_train/responsive.dart';
import 'package:admin_panel_train/screen/dashboard/dashboard_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'components/slide_menu.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SafeArea(
          child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if(Responsive.isDesktop(context)) Expanded(
            // default flex = 1
            // and it takes 1/6 part of the screen
            child: SlideMenu(),
          ),
          Expanded(
            flex: 5,
            child: DashboardScreen(),
          ),
        ],
      )),
    );
  }
}
