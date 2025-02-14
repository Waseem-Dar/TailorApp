import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_color.dart';
import '../utils/app_icons.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor2,
          surfaceTintColor: Colors.transparent,
          title: Text(
            "TailorBook",
            style: GoogleFonts.poppins(color: AppColors.white),
          ),
          automaticallyImplyLeading: false,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage(AppIcons.notificationIcon),
                  color: AppColors.white,
                ),
              ),
            ),
          ],

          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 45),
            child: Container(
              color: AppColors.background,
              child: TabBar(
                  isScrollable: true,
                  tabAlignment: TabAlignment.center,
                  labelStyle: GoogleFonts.poppins(color: AppColors.primaryColor2),
                  unselectedLabelColor: AppColors.grey2,
                  padding: EdgeInsets.zero,
                  dividerColor: AppColors.background,
                  tabs: [
                    Tab(
                      text: "All",
                    ),
                    Tab(
                      text: "Men",
                    ),
                    Tab(
                      text: "Women",
                    ),
                    Tab(
                      text: "Favorite",
                    ),


                  ]),
            ),
          ),
        ),
        body: TabBarView(children: [
          Container(
            height: 100,
            width: 100,
          ),
           Container(
            height: 100,
            width: 100,

          ),
           Container(
            height: 100,
            width: 100

          ),
           Container(
            height: 100,
            width: 100,
          ),

        ]),
      ),
    );
  }
}
