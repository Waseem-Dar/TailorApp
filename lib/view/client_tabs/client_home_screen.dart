import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/model/gallery_model.dart';

import '../../data/cloth_images.dart';
import '../../main.dart';
import '../../utils/app_color.dart';
import '../../utils/app_icons.dart';
import '../../widgets/app_widgets.dart';
import '../../widgets/cards/fabric_card.dart';
import '../../widgets/cards/gallery_cloth_card.dart';
import '../../widgets/cards/most_popular_card.dart';
import '../../widgets/cards/popular_design_card.dart';

class ClientHomeScreen extends StatefulWidget {
  const ClientHomeScreen({super.key});

  @override
  State<ClientHomeScreen> createState() => _ClientHomeScreenState();
}

TextEditingController searchController = TextEditingController();
String _selectedChoice = '';
bool isSearch = false;
int _value = 0;

class _ClientHomeScreenState extends State<ClientHomeScreen> {
  @override
  Widget build(BuildContext context) {
    mq = MediaQuery.of(context).size;
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        backgroundColor: AppColors.white,
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor2,
          surfaceTintColor: Colors.transparent,
          title: Text(
            "Stitch Craft",
            style: GoogleFonts.poppins(color: AppColors.white),
          ),
          automaticallyImplyLeading: false,
          actions: [
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
            preferredSize: Size(double.infinity, 50),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
                  child: SizedBox(
                    height: 36,
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 14,
                      ),
                      cursorColor: Colors.grey,
                      cursorWidth: 1,
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                        contentPadding:
                            const EdgeInsets.symmetric(horizontal: 16),
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
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 25, 15, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Top Tailors for best sewing",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Text(
                        "View All",
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor2),
                      ))
                ],
              ),
            ),

            // Category Selection
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Wrap(
                spacing: 8,
                children: ClothImages.choiceList.map((choice) {
                  return ChoiceChip(
                    backgroundColor: AppColors.whiteGrey1,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(18)),
                    side: BorderSide.none,
                    showCheckmark: false,
                    selectedColor: AppColors.primaryColor2,
                    labelStyle: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: _selectedChoice == choice
                            ? Colors.white
                            : Colors.black),
                    label:
                        SizedBox(width: 90, child: Center(child: Text(choice))),
                    selected: _selectedChoice == choice,
                    onSelected: (selected) {
                      setState(() {
                        _selectedChoice = selected ? choice : '';
                      });
                    },
                  );
                }).toList(),
              ),
            ),

            // Food List - 1
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(
                    Icons.arrow_back_ios_rounded,
                    color: AppColors.primaryColor2,
                    size: 15,
                  ),
                  Flexible(
                    child: SizedBox(
                      height: 117,
                      child: ListView.builder(
                        itemCount: ClothImages.galleryItems.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final item = ClothImages.galleryItems[index];
                          return GalleryClothCard(
                              item: GalleryModel(
                                  image: item["image"]!, name: item["name"]!),
                              onTap: () {});
                        },
                      ),
                    ),
                  ),
                  Icon(
                    Icons.arrow_forward_ios_rounded,
                    color: AppColors.primaryColor2,
                    size: 15,
                  ),
                ],
              ),
            ),

            Container(
              width: double.infinity,
              height: 120,
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                      image: NetworkImage(ClothImages.banner),
                      fit: BoxFit.fill)),
            ),

            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(30, 25, 0, 0),
              child: Text(
                "Fabric foe Men's",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),
            // Food List - 2

            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: SizedBox(
                height: 120,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  itemCount: ClothImages.fabricImages.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final item = ClothImages.fabricImages[index];
                    return FabricCard(
                        item: GalleryModel(
                            image: item["image"]!, name: item["color"]!),
                        onTap: () {});
                  },
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 25, 15, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Popular Design",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Text(
                        "View All",
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor2),
                      ))
                ],
              ),
            ),

            SizedBox(
              height: 193,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 30, right: 10),
                itemCount: ClothImages.popularImages.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  final image = ClothImages.popularImages[index];
                  return PopularDesignCard(
                    image: image,
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 25, 15, 15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Shirts for you",
                    style: GoogleFonts.poppins(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  InkWell(
                      onTap: () {},
                      child: Text(
                        "View All",
                        style: GoogleFonts.poppins(
                            fontSize: 11,
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor2),
                      ))
                ],
              ),
            ),

            SizedBox(
              height: 89,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 30, right: 10),
                itemCount: ClothImages.clientShirtImages.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  String image = ClothImages.clientShirtImages[index];
                  return InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: Container(
                      width: 89,
                      height: 89,
                      margin: const EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(image), fit: BoxFit.cover),
                      ),
                    ),
                  );
                },
              ),
            ),

            const SizedBox(
              height: 30,
            ),

            SizedBox(
              height: 111,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 30, right: 10),
                itemCount: ClothImages.bannerImages.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  String image = ClothImages.bannerImages[index];
                  return InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: Container(
                      width: 270,
                      height: 111,
                      margin: const EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(
                            image: NetworkImage(image), fit: BoxFit.cover),
                      ),
                    ),
                  );
                },
              ),
            ),

            Padding(
              padding: const EdgeInsets.fromLTRB(30, 25, 15, 15),
              child: Text(
                "Most Popular",
                style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                ),
              ),
            ),

            SizedBox(
              height: 78,
              child: ListView.builder(
                padding: const EdgeInsets.only(left: 30, right: 10),
                itemCount: ClothImages.mostPopularImages.length,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  String image = ClothImages.mostPopularImages[index];
                  return MostPopularCard(
                    image: image,
                  );
                },
              ),
            ),

            const SizedBox(
              height: 20,
            )
          ],
        ),
      ),
    );
  }
}
