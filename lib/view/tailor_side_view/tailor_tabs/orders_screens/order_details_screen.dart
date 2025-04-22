import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/app_color.dart';
import '../../../../utils/app_icons.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColors.background,
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor2,
          title: Text(
            "Sabir Saleem",
            style: GoogleFonts.poppins(color: AppColors.white),
          ),
          iconTheme: IconThemeData(color: AppColors.white),
          elevation: 10,
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 8),
              child: IconButton(
                onPressed: () {},
                icon: ImageIcon(
                  AssetImage(AppIcons.deleteIcon),
                  color: AppColors.white,
                ),
              ),
            ),
          ],
        ),
        body: Column(children: [
          SizedBox(
            width: double.infinity,
            height: 220,
            child: Stack(
              children: [
                Container(
                  width: double.infinity,
                  height: 220,
                  // color: AppColors.red,
                  child: CachedNetworkImage(
                    imageUrl:
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO1kJt8LJRx4M1ZiMX0p3x7ScJ0vJzizJeAoPw-NY4LXQUvYbhYetcqweLkHUyI1CqJKs&usqp=CAU",
                    width: 80,
                    height: 80,
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Padding(
                      padding: const EdgeInsets.all(25.0),
                      child: CircularProgressIndicator(),
                    ),
                    errorWidget: (context, url, error) => Container(
                        color: AppColors.grey2.withOpacity(0.2),
                        child: Icon(
                          Icons.error,
                          color:  AppColors.red,
                        )),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.infinity,
                    height: 90,
                    margin:
                        const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.1),
                            offset: const Offset(0, 4),
                            blurRadius: 11.199999809265137)
                      ],
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 14,
                              width: 14,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  border: Border.all(
                                    color: AppColors.primaryColor2,
                                    width: 4,
                                  )),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              "LoremIpsum",
                              style: GoogleFonts.poppins(
                                  fontSize: 13,
                                  fontWeight: FontWeight.w500,
                                  color: AppColors.primaryColor2),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 6, top: 6),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "St 126, Building 01, Bahria Town ph 4",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black6),
                              ),
                              Text(
                                "Islambad, Pakistan",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.black6),
                              ),
                              Text(
                                "+01 283 281019",
                                style: GoogleFonts.poppins(
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    color: AppColors.black6),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ]));
  }
}
