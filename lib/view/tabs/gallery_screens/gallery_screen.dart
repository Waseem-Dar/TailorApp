import 'package:animate_do/animate_do.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/data/cloth_images.dart';
import 'package:tailor_book/model/gallery_model.dart';

import '../../../utils/app_color.dart';
import '../../../utils/app_icons.dart';
import '../../../widgets/cards/gallery_item_card.dart';
import 'gallery_items_screen.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {
double animateFrom=40;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor2,
        elevation: 10,
        title: Text(
          "Stitch Craft",
          style: GoogleFonts.poppins(color: AppColors.white),
        ),
        automaticallyImplyLeading: false,
        actions: [
                                                                            //Action Buttons
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage(AppIcons.favoriteIcon),
                color: AppColors.white,
              ),
            ),
          ), Padding(
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

      ),
      body: ListView(
          children: [
            SizedBox(
              height: 24,
            ),
            CarouselSlider(
              options: CarouselOptions(
                height: 150,
                aspectRatio: 16 / 9,
                viewportFraction: 0.85,
                initialPage: 0,
                enableInfiniteScroll: true,
                reverse: false,
                autoPlay: true,
                autoPlayInterval: Duration(seconds: 3),
                autoPlayAnimationDuration: Duration(milliseconds: 800),
                autoPlayCurve: Curves.fastOutSlowIn,
                enlargeCenterPage: true,
                enlargeFactor: 0.15,
                scrollDirection: Axis.horizontal,
              ),
              items: ClothImages.CarouselSliderImages.map((i) {
                return Builder(
                  builder: (BuildContext context) {
                    return Container(
                        clipBehavior: Clip.hardEdge,
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(20)),
                        child: Image.network(
                          i,
                          fit: BoxFit.cover,
                        ));
                  },
                );
              }).toList(),
            ),
                                                                      //Grid Items
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24,vertical: 24),
              child: GridView.builder(
                physics:  NeverScrollableScrollPhysics(),
                shrinkWrap:true ,
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
                        Navigator.push(context, MaterialPageRoute(builder: (context) => GalleryItemsScreen(name:item["image"]!,),));
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



