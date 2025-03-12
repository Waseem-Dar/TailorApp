import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/view/tabs/gallery_screens/gallery_item_details_screen.dart';

import '../../../data/cloth_images.dart';
import '../../../model/gallery_model.dart';
import '../../../utils/app_color.dart';
import '../../../utils/app_icons.dart';
import '../../../widgets/cards/gallery_item_card.dart';

class GalleryItemsScreen extends StatefulWidget {
  final String name;
  const GalleryItemsScreen({super.key, required this.name});

  @override
  State<GalleryItemsScreen> createState() => _GalleryItemsScreenState();
}

class _GalleryItemsScreenState extends State<GalleryItemsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor2,
        title: Text(widget.name, style: GoogleFonts.poppins(color: AppColors.white),),
        iconTheme: IconThemeData(color: AppColors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage(AppIcons.favoriteIcon),
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
      body:                                                           //Grid Items
      ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 24),
            child: GridView.builder(
              physics:  NeverScrollableScrollPhysics(),
              shrinkWrap:true ,padding: EdgeInsets.symmetric(horizontal: 24),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 24.0,
                mainAxisSpacing: 24.0,
                childAspectRatio: 1.0,
              ),
              itemCount: ClothImages.galleryItems.length,
              itemBuilder: (BuildContext context, int index) {
                final item = ClothImages.galleryItems[index];
                return InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => GalleryItemDetailsScreen(item: GalleryModel(image:item["image"]! , name: item["name"]!),),));
                    },
                    child: GalleryItemCard(item: GalleryModel(image:item["image"]! , name: item["name"]!),index: index,));
              },
            ),
          ),
        ],
      ),
    );
  }
}
