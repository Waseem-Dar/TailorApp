import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/utils/app_color.dart';
import 'package:tailor_book/utils/app_icons.dart';

class OrderScreen extends StatefulWidget {
  const OrderScreen({super.key});

  @override
  State<OrderScreen> createState() => _OrderScreenState();
}

class _OrderScreenState extends State<OrderScreen> {
  bool isSearch = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(

      length: 6,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
          appBar: AppBar(
            backgroundColor: AppColors.primaryColor2,
            surfaceTintColor: Colors.transparent,
           title: Text("TailorBook",style: GoogleFonts.poppins(color: AppColors.white),),
            automaticallyImplyLeading: false,

            actions: [
              IconButton(onPressed: (){
                isSearch = !isSearch;
                setState(() {});
              }, icon: ImageIcon(AssetImage(AppIcons.searchIcon,),color: AppColors.white,)),
              IconButton(onPressed: (){}, icon: ImageIcon(AssetImage(AppIcons.notificationIcon,),color: AppColors.white,))
            ],
            bottom: PreferredSize(
              preferredSize: Size(double.infinity, isSearch?90:48),
              child: Column(
                children: [
                isSearch?Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SizedBox(
                  height: 36,
                  child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,fontSize: 12,
                      ),

                      cursorColor: Colors.grey,
                      cursorWidth: 1,
                      decoration: InputDecoration(
                          hintText: "Search",
                          hintStyle: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400, fontSize: 12),
                          contentPadding:
                          const EdgeInsets.symmetric(horizontal: 16),
                          fillColor: AppColors.background,
                          filled: true,
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(19),borderSide: BorderSide.none)
                      )
                  ),
                                ),
                ):SizedBox(),
                  TabBar(
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
                ],
              ),
            ),
          ),
          body: TabBarView(
            children: [
              ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.fromLTRB(16,16,16,0),
                    child: Card(
                      surfaceTintColor: AppColors.white,
                      color: AppColors.white,

                      child: ListTile(
                        contentPadding: EdgeInsets.zero,
                        visualDensity: VisualDensity(vertical: 4),
                        minTileHeight: 100,

                        // minLeadingWidth: 100,
                        leading: Container(
                          color: Colors.red ,
                            height: 150,
                            // width: 100,
                            child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO1kJt8LJRx4M1ZiMX0p3x7ScJ0vJzizJeAoPw-NY4LXQUvYbhYetcqweLkHUyI1CqJKs&usqp=CAU",fit: BoxFit.cover,)),
                      ),
                    ),
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
