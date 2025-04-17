import 'package:flutter/material.dart';
import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:tailor_book/utils/app_color.dart';
import 'package:tailor_book/utils/app_icons.dart';
import 'package:tailor_book/view/tailor_side_view/add_client_screen.dart';
import 'package:tailor_book/view/tailor_side_view/tailor_tabs/Reports_screen.dart';
import 'package:tailor_book/view/tailor_side_view/tailor_tabs/gallery_screens/gallery_screen.dart';
import 'package:tailor_book/view/tailor_side_view/tailor_tabs/order_screen.dart';
import 'package:tailor_book/view/tailor_side_view/tailor_tabs/users_screen.dart';


class TabScreen extends StatefulWidget {
  const TabScreen({super.key});

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  int _bottomNavIndex = 0;

  final List _tabs = [
    const OrderScreen(),
    const UsersScreen(),
    const GalleryScreen(),
    const ReportsScreen()
  ];
  final iconList = [
    AppIcons.orderIcon,
    AppIcons.usersIcon,
    AppIcons.galleryIcon,
    AppIcons.profileIcon,
  ];
  final iconList1 = [
    AppIcons.orderIcon1,
    AppIcons.usersIcon1,
    AppIcons.galleryIcon1,
    AppIcons.profileIcon,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: _tabs[_bottomNavIndex], //destination screen
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => AddClientScreen(),));
        },
        backgroundColor: AppColors.primaryColor2,
        shape: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30),
            borderSide: BorderSide.none),
        child: Icon(
          Icons.add,
          color: AppColors.white,
          size: 30,
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: AnimatedBottomNavigationBar.builder(
        itemCount: _tabs.length,
        tabBuilder: (index, isActive) {
          return Padding(
              padding: EdgeInsets.all(19),
              child: ImageIcon(AssetImage(isActive?iconList[index]:iconList1[index]),color:isActive?AppColors.white: AppColors.white.withOpacity(0.5),));

        },
        activeIndex: _bottomNavIndex,
        height: 60,
        borderColor: Colors.transparent,
        gapLocation: GapLocation.center,
        backgroundColor: AppColors.primaryColor2.withOpacity(0.4),
        notchSmoothness: NotchSmoothness.softEdge  ,
        onTap: (index) => setState(() => _bottomNavIndex = index),
        //other params
      ),
    );
  }
}
