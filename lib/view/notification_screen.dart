import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/view/tailor_side_view/tailor_tabs/Reports_screen.dart';
import 'package:tailor_book/view/tailor_side_view/user_details_screen.dart';

import '../utils/app_color.dart';
import '../utils/app_icons.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {


  List<Map<String,dynamic>> notificationList = [
    {"icon":AppIcons.deliveryNotificationIcon,"color":AppColors.orange,"msg":"Deliver your item"},
    {"icon":AppIcons.cancelNotificationIcon,"color":AppColors.red,"msg":"Cancel your order"},
    {"icon":AppIcons.paymentNotificationIcon,"color":AppColors.black,"msg":"Payment request"},
    {"icon":AppIcons.messageNotificationIcon,"color":AppColors.blue,"msg":"Message to you"},
    {"icon":AppIcons.completeNotificationIcon,"color":AppColors.green,"msg":"Complete your order"},
    {"icon":AppIcons.deliveryNotificationIcon,"color":AppColors.orange,"msg":"Deliver your item"},
    {"icon":AppIcons.cancelNotificationIcon,"color":AppColors.red,"msg":"Cancel your order"},
    {"icon":AppIcons.paymentNotificationIcon,"color":AppColors.black,"msg":"Payment request"},
    {"icon":AppIcons.messageNotificationIcon,"color":AppColors.blue,"msg":"Message to you"},
    {"icon":AppIcons.completeNotificationIcon,"color":AppColors.green,"msg":"Complete your order"},
  ];

  Set<int> selectedItems = {}; // Stores selected item indexes
  bool isSelectionMode = false;

  void toggleSelection(int index) {
    setState(() {
      if (selectedItems.contains(index)) {
        selectedItems.remove(index);
        if (selectedItems.isEmpty)
          isSelectionMode = false; // Exit selection mode if none selected
      } else {
        selectedItems.add(index);
        isSelectionMode = true; // Activate selection mode
      }
    });
  }

  void deleteSelectedItems() {
    setState(() {
      notificationList.removeWhere((index) => selectedItems.contains(index));
      selectedItems.clear();
      isSelectionMode = false;
    });
  }


  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: !isSelectionMode,
      onPopInvoked: (didPop) {
        if (!didPop && isSelectionMode) {
          setState(() {
            selectedItems.clear();
            isSelectionMode = false;
          });
        }
      },
      child: Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor2,
          iconTheme: IconThemeData(color: AppColors.white),
          elevation: 10,
          actions: [
            if(isSelectionMode)Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(
                onPressed: deleteSelectedItems,
                icon: ImageIcon(
                  AssetImage(AppIcons.deleteIcon),
                  color: AppColors.white,
                ),
              ),
            ),

          ],
          title: Text(
            "Notification",
            style: GoogleFonts.poppins(color: AppColors.white),
          ),
        ),
        body:ListView.builder(
          itemCount: notificationList.length,
          padding: EdgeInsets.symmetric(vertical: 4),
          itemBuilder: (context, index) {
            bool isSelected = selectedItems.contains(index);
            final item = notificationList[index];
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              child: ListTile(
                onLongPress: () => toggleSelection(index),
                onTap: isSelectionMode
                    ? () => toggleSelection(index)
                    : () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => UserDetailsScreen(),
                      ));
                },
                tileColor: isSelected
                    ? AppColors.primaryColor2.withOpacity(0.15)
                    : AppColors.background,
      
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                contentPadding:
                EdgeInsets.symmetric(vertical: 0, horizontal: 16),
                leading: Container(
                  height: 57,
                  width: 57,
                  clipBehavior: Clip.hardEdge,
                  padding: EdgeInsets.all(12),
                  decoration: BoxDecoration(
                    color: item["color"].withOpacity(0.05),
                    shape: BoxShape.circle,
      
                  ),
                  child: ImageIcon(AssetImage(item["icon"]),color: item["color"].withOpacity(0.5 ),)
                ),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text(
                    "Sabir Saleem",
                    style: GoogleFonts.poppins(
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                        color: Colors.black),
                  ),
                ),
                subtitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      item["msg"],
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                          color: const Color(0xFF6C6C6C)),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    Text(
                      'This is a open source and free2 UI library.',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,
                          fontSize: 13,
                          color: const Color(0xFF6C6C6C)),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                ),
              ),
            );
          },
        )
      ),
    );
  }
}
