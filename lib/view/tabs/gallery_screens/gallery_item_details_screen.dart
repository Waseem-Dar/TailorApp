import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/data/cloth_images.dart';
import 'package:tailor_book/utils/app_color.dart';
import 'package:tailor_book/widgets/app_widgets.dart';

import '../../../main.dart';
import '../../../model/gallery_model.dart';
import '../../../utils/app_icons.dart';
import '../../../widgets/cards/similer_item_card.dart';

class GalleryItemDetailsScreen extends StatefulWidget {
  final GalleryModel item;
  const GalleryItemDetailsScreen({super.key, required this.item});

  @override
  State<GalleryItemDetailsScreen> createState() =>
      _GalleryItemDetailsScreenState();
}

bool isFav = false;

class _GalleryItemDetailsScreenState extends State<GalleryItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 14),
        child: AppWidgets.mainButton("Order", () {},),
      ),
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        backgroundColor: AppColors.background,
        surfaceTintColor: Colors.transparent,
        title: Text(
          "Details",
          style: GoogleFonts.poppins(color: AppColors.black),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {
                setState(() {
                  isFav = !isFav;
                });
              },
              icon: ImageIcon(
                AssetImage(isFav?AppIcons.favoriteFillIcon:AppIcons.favoriteIcon),
                color: AppColors.black,
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        children: [
          Container(
            width: mq.width,
            height: 350,
            child: Image.network(
              widget.item.image,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      widget.item.name,
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500, fontSize: 21),
                      maxLines: 1,
                    ),
                    Text(
                      "Rs. 1500",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w500,fontSize: 15 ),
                    ),
                  ],
                ),
                Text(
                  "(Category)",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w400,
                      fontSize: 11,
                      color: AppColors.grey1),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    RatingBar.builder(
                      itemSize: 16,
                      initialRating: 3.5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      unratedColor: Colors.grey,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    Text(
                      "(Views 4.5)",
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 11,
                          color: AppColors.grey1),
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Description",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500, fontSize: 16),
                  maxLines: 1,
                ),
                Text(
                  "In our busy lives, it’s easy to feel disconnected. But just like we need a password to access important things, we need prayer to connect withGod.Take a moment each day to pause, reflect, and pray. You’ll be amazed at the strength and clarity it brings to your life. Let’s make prayer a priority and deepen our connection with God.",
                  style: GoogleFonts.poppins(
                      fontWeight: FontWeight.w500,color: AppColors.black6),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text("Similar Items",style: GoogleFonts.poppins(
                fontWeight:FontWeight.w500,fontSize:16, color:Colors.black)),
          ),
          SizedBox(
            height: 232,
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 10),
              itemCount: ClothImages.galleryItems.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                final item = ClothImages.galleryItems[index];
                return  Padding(
                  padding: const EdgeInsets.all(5),
                  child: SimilarItemCard(item: GalleryModel(image:item["image"]! , name: item["name"]!)),
                );
              },),
          ),
          SizedBox(
            height: 70,
          )
        ],
      ),
    );
  }
}
