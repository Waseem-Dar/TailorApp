import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/utils/app_color.dart';
import 'package:tailor_book/utils/app_icons.dart';
import 'package:getwidget/getwidget.dart';
import 'package:cached_network_image/cached_network_image.dart';

import '../widgets/cards/order_screen_tile_card.dart';

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
            title: Text(
              "TailorBook",
              style: GoogleFonts.poppins(color: AppColors.white),
            ),
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                  onPressed: () {
                    isSearch = !isSearch;
                    setState(() {});
                  },
                  icon: ImageIcon(
                    AssetImage(
                      AppIcons.searchIcon,
                    ),
                    color: AppColors.white,
                  )),
              Padding(
                padding: const EdgeInsets.only(right: 8),
                child: IconButton(
                    onPressed: () {},
                    icon: ImageIcon(
                      AssetImage(
                        AppIcons.notificationIcon,
                      ),
                      color: AppColors.white,
                    )),
              )
            ],
            bottom: PreferredSize(
              preferredSize: Size(double.infinity, isSearch ? 90 : 48),
              child: Column(
                children: [
                  isSearch
                      ? FadeInDown(
                          from: 10,
                          duration: Duration(milliseconds: 500),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(16, 5, 16, 0),
                            child: SizedBox(
                              height: 36,
                              child: TextFormField(
                                style: GoogleFonts.poppins(
                                  fontWeight: FontWeight.w400,
                                  fontSize: 12,
                                ),
                                cursorColor: Colors.grey,
                                cursorWidth: 1,
                                decoration: InputDecoration(
                                  hintText: "Search",
                                  hintStyle: GoogleFonts.poppins(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                  ),
                                  contentPadding: const EdgeInsets.symmetric(
                                      horizontal: 16),
                                  fillColor: AppColors.background,
                                  filled: true,
                                  border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(19),
                                    borderSide: BorderSide.none,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      : SizedBox(),
                  TabBar(
                      isScrollable: true,
                      tabAlignment: TabAlignment.start,
                      labelStyle: GoogleFonts.poppins(color: AppColors.white),
                      unselectedLabelColor: AppColors.white.withOpacity(0.5),
                      indicatorColor: AppColors.white,
                      padding: EdgeInsets.zero,
                      dividerHeight: 0,
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
              OrderScreenTileCard(),
              OrderScreenTileCard(),
              OrderScreenTileCard(),
              OrderScreenTileCard(),
              OrderScreenTileCard(),
              OrderScreenTileCard(),
            ],
          )),
    );
  }
}
