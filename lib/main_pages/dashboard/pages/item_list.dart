import 'package:flutter/material.dart';
import 'package:learnhtml/main_pages/dashboard/pages/home.dart';
import 'package:learnhtml/main_pages/dashboard/pages/project.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar_item.dart';

const List<Widget> widgetOptions = <Widget>[
  Home(),
  Project(),
];

// List<PersistentBottomNavBarItem> items = [
//   PersistentBottomNavBarItem(
//     icon: Icon(Icons.home),
//     title: 'HOME',
//     activeColorPrimary: Colors.blue,
//     inactiveColorPrimary: Colors.grey,
//   ),
//   PersistentBottomNavBarItem(
//     icon: Icon(Icons.business_rounded),
//     title: 'PROJECT',
//     activeColorPrimary: Colors.blue,
//     inactiveColorPrimary: Colors.grey,
//   ),
// ];

List<RollingBottomBarItem> items = [
  const RollingBottomBarItem(
    Icons.home_outlined,
    label: 'HOME', 
    activeColor: Colors.redAccent
    ),
  const RollingBottomBarItem(
    Icons.home_work_outlined,
    label: 'PROJECT', 
    activeColor: Colors.orangeAccent
    )

// List<GButton> items = [
//   GButton(
//     icon: Icons.home_rounded,
//     text: 'HOME',
//   ),
//   GButton(
//     icon: Icons.view_timeline_rounded,
//     text: 'PROJECT',
//     leading: badges.Badge(
//       position: badges.BadgePosition.topEnd(top: -12, end: -12),
//       badgeColor: Colors.red,
//       badgeContent: const Text('3', style: TextStyle(color: Colors.white)),
//         child: const Icon(Icons.view_timeline_rounded,),

//     ),
//   ),
];
