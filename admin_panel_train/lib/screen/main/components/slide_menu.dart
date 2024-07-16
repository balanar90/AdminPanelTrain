import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SlideMenu extends StatelessWidget {
  const SlideMenu({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SingleChildScrollView(
        // it enable scrollview
        child: Column(
          children: [
            DrawerHeader(child: Image.asset("/images/logo.png")),
            DrawerListTile(
              title: "Dashboard",
              svgSrc: "icons/menu_dashbord.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Transaction",
              svgSrc: "icons/menu_dashbord.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Task",
              svgSrc: "icons/menu_task.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Document",
              svgSrc: "icons/menu_doc.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Store",
              svgSrc: "icons/menu_store.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Notification",
              svgSrc: "icons/menu_notification.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Profile",
              svgSrc: "icons/menu_profile.svg",
              press: () {},
            ),
            DrawerListTile(
              title: "Setting",
              svgSrc: "icons/menu_setting.svg",
              press: () {},
            ),
          ],
          // color: Colors.white,
        ),
      ),
    );
  }
}

class DrawerListTile extends StatelessWidget {
  const DrawerListTile({
    super.key,
    required this.title,
    required this.svgSrc,
    required this.press,
  });

  final String title, svgSrc;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: press,
      horizontalTitleGap: 0.0,
      leading: SvgPicture.asset(
        svgSrc,
        color: Colors.white,
        height: 16,
      ),
      title: Text(
        title,
        style: TextStyle(color: Colors.white54),
      ),
    );
  }
}
