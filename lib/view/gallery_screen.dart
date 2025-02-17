import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/data/cloth_images.dart';

import '../utils/app_color.dart';
import '../utils/app_icons.dart';

class GalleryScreen extends StatefulWidget {
  const GalleryScreen({super.key});

  @override
  State<GalleryScreen> createState() => _GalleryScreenState();
}

class _GalleryScreenState extends State<GalleryScreen> {

  String _selectedChoice = '';
  List choiceList = ["All","Men","Women"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor2,
        // surfaceTintColor: AppColors.background,
        elevation: 10,
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
            Wrap(
              spacing: 8,
              alignment: WrapAlignment.center,
              children: choiceList.map((choice){
                return ChoiceChip(
                  backgroundColor: AppColors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
                  side: BorderSide.none,
                  showCheckmark: false,
                  selectedColor: AppColors.primaryColor2,
                  labelStyle: GoogleFonts.poppins(fontSize:16,fontWeight:FontWeight.w500,
                      color:_selectedChoice == choice?Colors.white:Colors.black),
                  label: SizedBox(
                      width: 70,
                      child: Center(child: Text(choice))),
                  selected: _selectedChoice == choice,
                  onSelected: (selected) {
                    setState(() {
                      _selectedChoice = selected ? choice : '';
                    });
                  },
                );
              }).toList(),
            ),
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
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 24),
              child: GridView.builder(
                physics:  NeverScrollableScrollPhysics(),
                shrinkWrap:true ,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 16.0,
                  mainAxisSpacing: 16.0,
                  childAspectRatio: 1.0,
                ),
                itemCount: ClothImages.GridViewImages.length,
                itemBuilder: (BuildContext context, int index) {
                  return GridItemCard(item: ClothImages.GridViewImages[index]);
                },
              ),
            ),
          ],
        ),

    );
  }
}



class GridItemCard extends StatelessWidget {
  final String item;

  const GridItemCard({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      clipBehavior: Clip.hardEdge,
      decoration: BoxDecoration(
        color: AppColors.background,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            offset: const Offset(0, 4),
            blurRadius: 11.2,
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Image.network(
              item,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Hello",
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.titleMedium,
            ),
          ),
        ],
      ),
    );
  }
}
