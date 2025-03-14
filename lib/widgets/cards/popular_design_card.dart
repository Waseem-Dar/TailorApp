import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/utils/app_icons.dart';

import '../../utils/app_color.dart';

class PopularDesignCard extends StatefulWidget {
  final String image;
  const PopularDesignCard({
    super.key,
    required this.image,
  });

  @override
  State<PopularDesignCard> createState() => _PopularDesignCardState();
}

class _PopularDesignCardState extends State<PopularDesignCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {},
      child: Container(
        width: 189,
        height: 193,
        padding: const EdgeInsets.all(12),
        margin: const EdgeInsets.only(right: 6),
        decoration: BoxDecoration(
            color: AppColors.whiteGrey1,
            borderRadius: BorderRadius.circular(30),
            border: Border.all(color: AppColors.black6, width: 0.5)
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: 110, height: 95, child: Image.network(widget.image)),
            SizedBox(
                width: double.infinity,
                child: Text("Fashion",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Colors.black),
                    textAlign: TextAlign.left)),
            SizedBox(
                width: double.infinity,
                child: Text(
                  "Pin for Later: How to Wear the New '70s Trend Right Now Bell Sleeves H&M Mustard Yellow Dress",
                  style: GoogleFonts.poppins(
                      fontSize: 10,
                      fontWeight: FontWeight.w400,
                      color: AppColors.black6),
                  textAlign: TextAlign.left,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                children: [
                  Text(
                    "Rs. 1600",
                    style: GoogleFonts.poppins(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: AppColors.black6),
                  ),
                  const Spacer(),
                  SizedBox(
                      width: 20,
                      height: 20,
                      child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: ImageIcon(
                            AssetImage(
                              "assets/images/fav-outline.png",
                            ),
                            size: 19,
                            color: AppColors.primaryColor2,
                          ))),
                  const SizedBox(width: 3),
                  SizedBox(
                      width: 20,
                      height: 20,
                      child: IconButton(
                          padding: EdgeInsets.zero,
                          onPressed: () {},
                          icon: ImageIcon(
                            AssetImage(AppIcons.circleAddIcon),
                            size: 19,
                            color: AppColors.primaryColor2,
                          ))),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
