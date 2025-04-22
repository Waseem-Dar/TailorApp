import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../../../data/cloth_images.dart';
import '../../../../model/gallery_model.dart';
import '../../../../utils/app_color.dart';
import '../../../../utils/app_icons.dart';
import '../../../../widgets/cards/gallery_item_card.dart';
import 'gallery_item_details_screen.dart';

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
          GridView.builder(
            physics:  NeverScrollableScrollPhysics(),
            shrinkWrap:true ,padding: EdgeInsets.all(20),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 20.0,
              mainAxisSpacing: 20.0,
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
        ],
      ),
    );
  }
}
