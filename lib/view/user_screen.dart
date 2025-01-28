import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/utils/app_color.dart';
import 'package:tailor_book/utils/app_icons.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
          appBar: AppBar(
            backgroundColor: AppColors.primaryColor2,
            surfaceTintColor: Colors.transparent,
            title: Text("TailorBook",style: GoogleFonts.poppins(color: AppColors.white),),
            automaticallyImplyLeading: false,

            actions: [
              IconButton(onPressed: (){}, icon: ImageIcon(AssetImage(AppIcons.searchIcon,),color: AppColors.white,)),
              IconButton(onPressed: (){}, icon: ImageIcon(AssetImage(AppIcons.notificationIcon,),color: AppColors.white,))
            ],
            bottom: TabBar(
                isScrollable: true,
                tabAlignment: TabAlignment.start,
                labelStyle: GoogleFonts.poppins(color: AppColors.white),
                unselectedLabelColor: AppColors.white.withOpacity(0.5),
                indicatorColor: AppColors.white,
                padding: EdgeInsets.zero,
                tabs: [
                  Tab(
                    text: "Active",
                  ),
                  Tab(
                    text: "Past Due",
                  ),
                  Tab(
                    text: "Upcoming",
                  ),
                  Tab(
                    text: "Complete",
                  ),
                  Tab(
                    text: "Urgent",
                  ),
                  Tab(
                    text: "Delivered",
                  ),
                ]),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Container(
                    width: double.infinity,
                    color: Colors.white,
                    margin: EdgeInsets.all(24),
                    height: 100,
                  );
                },
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.red,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.green,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.yellow,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.blue,
              ),
              Container(
                height: 100,
                width: 100,
                color: Colors.purple,
              ),
            ],
          )),
    );
  }
}
