import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_color.dart';
import '../utils/app_icons.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {


  List notificationList = [1, 2, 3, 4, 5, 6, 7, 8, 9, 9, 10, 11, 12, 13, 14, 15];

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
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor2,
        iconTheme: IconThemeData(color: AppColors.white),
        elevation: 10,
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
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
            child: ListTile(
              onLongPress: () => toggleSelection(index),
              // onTap: isSelectionMode
              //     ? () => toggleSelection(index)
              //     : () {
              //   Navigator.push(
              //       context,
              //       MaterialPageRoute(
              //         builder: (context) => UserDetailsScreen(),
              //       ));
              // },
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
                decoration: BoxDecoration(
                  color: AppColors.grey2.withOpacity(0.2),
                  shape: BoxShape.circle,
                ),
                child: CachedNetworkImage(
                  imageUrl:
                  "https://encrypted-tbn0.gstatic.om/images?q=tbn:ANd9GcQO1kJt8LJRx4M1ZiMX0p3x7ScJ0vJzizJeAoPw-NY4LXQUvYbhYetcqweLkHUyI1CqJKs&usqp=CAU",
                  fit: BoxFit.cover,
                  placeholder: (context, url) => Padding(
                      padding: EdgeInsets.all(10),
                      child: CircularProgressIndicator()),
                  errorWidget: (context, url, error) => Icon(
                    Icons.person,
                    color: AppColors.grey2,
                    size: 45,
                  ),
                ),
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
                    'This is a open source and free UI library.',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color(0xFF6C6C6C)),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  Text(
                    '$index',
                    style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: const Color(0xFF6C6C6C)),
                    maxLines: 1,
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
    );
  }
}
