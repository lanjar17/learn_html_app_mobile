import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:learnhtml/common/widgets/custom_main_appbar.dart';
import 'package:learnhtml/common/widgets/custom_drawer.dart';
import 'package:learnhtml/main_pages/dashboard/pages/item_list.dart';
import 'package:rolling_bottom_bar/rolling_bottom_bar.dart';
import 'package:learnhtml/main_pages/dashboard/pages/home.dart';
import 'package:learnhtml/main_pages/dashboard/pages/project.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  _DashboardPageState createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ref, child) {
        return Scaffold(
          appBar: customMainAppbar(context, "LEARN HTML"),
          endDrawer: const CustomDrawer(),
          body: Center(
            child: PageView(
              controller: _pageController,
              children: const <Widget>[
                Home(),
                Project(),
              ],
            ),
            ),
          extendBody: true,  
          bottomNavigationBar: 
             RollingBottomBar(
                  controller: _pageController,
                  color: Theme.of(context).colorScheme.onTertiary,
                  itemColor: Colors.white,
                  flat: true,
                  useActiveColorByDefault: false,
                  enableIconRotation: true,
                  onTap: (index) {
                    _pageController.animateToPage(
                      index,
                      duration: const Duration(milliseconds: 400),
                      curve: Curves.easeOut,
                    );
                  },
                  items: items,
                ),
              );
            
          
        
      },
    );
  }
}

// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:google_nav_bar/google_nav_bar.dart';
// import 'package:learnhtml/common/widgets/custom_main_appbar.dart';
// import 'package:learnhtml/common/widgets/custom_drawer.dart';
// import 'package:learnhtml/main_pages/dashboard/pages/item_list.dart';
// import 'package:learnhtml/main_pages/dashboard/provider/dashboard_provider.dart';

// class DashboardPage extends ConsumerWidget {
//   const DashboardPage({super.key});

//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     int selectedIndex = ref.watch(indexProvider);
//     return Scaffold(
//       appBar: customMainAppbar(context, "LEARN HTML"),
//       endDrawer: const CustomDrawer(),
//       bottomNavigationBar: GNav(
//         backgroundColor: Theme.of(context).colorScheme.secondary,
//         selectedIndex: selectedIndex,
//         // selectedIconTheme: const IconThemeData(size: 30),
//         tabBackgroundColor: Colors.grey.shade800,
//         activeColor: Colors.white,
//         padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 8),
//         gap: 8,
//         onTabChange: (index) {
//           ref.read(indexProvider.notifier).state = index;
//         },
//         tabs: items,
//       ),
//       body: Center(child: widgetOptions[selectedIndex]),
//     );
//   }
// }


// child: SafeArea(
//           child: Padding(
//             // padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
//             padding: EdgeInsets.symmetric(
//                 horizontal: MediaQuery.of(context).size.width * 0.05,
//                 vertical: MediaQuery.of(context).size.width * 0.03),
//             child: GNav(
//               mainAxisAlignment: MainAxisAlignment.center,
//               rippleColor: Colors.blueGrey,
//               hoverColor: Colors.black,
//               haptic: true,
//               curve: Curves.easeOutCubic,
//               gap: 8, // the tab button gap between icon and text
//               duration: const Duration(milliseconds: 500),
//               color: Colors.white, // unselected icon color
//               activeColor: Colors.amber, // selected icon and text color
//               // iconSize: 24, // tab button icon size
//               iconSize: MediaQuery.of(context).size.width * 0.05, // tab button icon size
//               tabBackgroundColor: Colors.grey.shade700,
//               backgroundColor: Colors.transparent,
//               tabBorderRadius: 15, 
//               selectedIndex: selectedIndex,
//               padding:const EdgeInsets.symmetric(horizontal: 15.0, vertical: 15),
//               onTabChange: (index) {
//                 ref.read(indexProvider.notifier).state = index;
//               },
//               tabs: items,
//             ),
//           ),
//         ),