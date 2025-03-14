
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
  Widget build(BuildContext context){
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
            preferredSize: Size(double.infinity,  50 ),
            child: Column(
              children: [
                 Padding(
                   padding: const EdgeInsets.symmetric(horizontal: 16,vertical: 10),
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
              ],
            ),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(30,25,15,15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Top Tailors for best sewing",style: GoogleFonts.poppins(
                    fontSize:16,fontWeight:FontWeight.w500,color:Colors.black,),),
                  InkWell(
                      onTap: (){},
                      child: Text("View All",style: GoogleFonts.poppins(
                          fontSize:11,fontWeight:FontWeight.w500,color:AppColors.primaryColor2),))
                ],
              ),
            ),
            // Category Selection
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Wrap(
                spacing: 8,
                children: ClothImages.choiceList.map((choice){
                  return ChoiceChip(
                    backgroundColor: AppColors.whiteGrey1,
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
            ),
            // Food List - 1
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.arrow_back_ios_rounded,color: AppColors.primaryColor2,size: 15,),
                  Flexible(
                    child: SizedBox(
                      height: 117,
                      child: ListView.builder(
                        itemCount:ClothImages.galleryItems.length,
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) {
                          final item = ClothImages.galleryItems[index];
                          return GalleryClothCard(item:  GalleryModel(image:item["image"]! , name: item["name"]!), onTap: (){});
                        },),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios_rounded,color: AppColors.primaryColor2,size: 15,),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              height: 120,
              margin: const EdgeInsets.symmetric(horizontal: 24),
              decoration:   BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  // color: Colors.red,
                  image:  DecorationImage(image: NetworkImage(ClothImages.banner),fit: BoxFit.fill)
              ),
            ),
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(30,25,0,0),
              child: Text("Fabric foe Men's",style: GoogleFonts.poppins(
                fontSize:16,fontWeight:FontWeight.w600,color:Colors.black,),),
            ),
            //                                       // Food List - 2


            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child:
              SizedBox(
                height: 120,
                child: ListView.builder(
                  padding: const EdgeInsets.symmetric(horizontal: 24),
                  itemCount:ClothImages.fabricImages.length,
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    final item = ClothImages.fabricImages[index];
                    return FabricCard(name: "///*****name", image: "////**image", onTap: (){});
                  },),
              ),
            ),



            Padding(
              padding: const EdgeInsets.fromLTRB(30,25,15,15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Popular Burgers",style: GoogleFonts.poppins(
                    fontSize:16,fontWeight:FontWeight.w600,color:Colors.black,),),
                  InkWell(
                      onTap: (){},
                      child: Text("View All",style: GoogleFonts.poppins(
                          fontSize:11,fontWeight:FontWeight.w500,color:AppColors.primaryColor2),))
                ],
              ),
            ),
            SizedBox(
              height: 193,
              child: ListView.builder(
                padding: const EdgeInsets.only(left:  30,right: 10),
                itemCount:10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return PopularDesignCard(image: "///*****image",);
                },),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,25,15,15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Deals for you",style: GoogleFonts.poppins(
                    fontSize:16,fontWeight:FontWeight.w600,color:Colors.black,),),
                  InkWell(
                      onTap: (){},
                      child: Text("View All",style: GoogleFonts.poppins(
                          fontSize:11,fontWeight:FontWeight.w500,color:AppColors.primaryColor2),))
                ],
              ),
            ),
            SizedBox(
              height: 89,
              child: ListView.builder(
                padding: const EdgeInsets.only(left:  30,right: 10),
                itemCount:10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  // String image = AppList.dealList[index]["image"];
                  return InkWell(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    onTap: () {},
                    child: Container(
                      width: 89,
                      height: 89,
                      margin: const EdgeInsets.only(right: 6),
                      decoration: BoxDecoration(
                        // color: Colors.red,
                        borderRadius: BorderRadius.circular(10),
                        image: DecorationImage(image: AssetImage("//*****image"),fit: BoxFit.cover),
                      ),
                    ),
                  );
                },),
            ),
            const SizedBox(height: 30,),
            SizedBox(
              height: 111,
              child: ListView.builder(
                padding: const EdgeInsets.only(left:  30,right: 10),
                itemCount:10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  // String image = AppList.dealBannerList[index]["image"];
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
                        image: DecorationImage(image: AssetImage("//*******image"),fit: BoxFit.cover),
                      ),
                    ),
                  );
                },),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30,25,15,15),
              child: Text("Most Popular",style: GoogleFonts.poppins(
                fontSize:16,fontWeight:FontWeight.w600,color:Colors.black,),),
            ),
            SizedBox(
              height: 78,
              child: ListView.builder(
                padding: const EdgeInsets.only(left:  30,right: 10),
                itemCount:10,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {

                  return MostPopularCard(image: "image",);
                },),
            ),
            const SizedBox(height: 20,)
          ],
        ),
      ),
    );
  }
  // void showBottomSheet(){
  //   showModalBottomSheet(
  //       shape: const RoundedRectangleBorder(borderRadius:BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))),
  //       backgroundColor: Colors.white,
  //       context: context,
  //       builder: (_){
  //         return StatefulBuilder(
  //             builder: (BuildContext context, StateSetter setState) {
  //               return Container(
  //                 decoration: const BoxDecoration(
  //                     color: Colors.white,
  //                     borderRadius:BorderRadius.only(topRight: Radius.circular(50),topLeft: Radius.circular(50))
  //                 ),
  //                 child: SingleChildScrollView(
  //                   child: Padding(
  //                     padding: const EdgeInsets.symmetric(horizontal: 20,vertical: 10),
  //                     child: Column(
  //                       children:  [
  //                         Image.asset("assets/images/bottom-line.png",width: 52,),
  //                         const SizedBox(height: 8,),
  //                         ListTile(
  //                           onTap: () {},
  //                           dense: true,
  //                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  //                           leading:  ImageIcon(const AssetImage("assets/images/direction-icon.png"),size: 26,color: AppColors.primaryColor2, ),
  //                           title: Text("Use my Current Location",style: GoogleFonts.poppins(
  //                             fontSize:15,fontWeight:FontWeight.w500,color:AppColors.primaryColor2,),),
  //                         ),
  //                         Divider(thickness: 1,color: AppColors.white2,indent: 30,endIndent: 30,height: 0,),
  //                         ListView.builder(
  //                           itemCount: AppList.addressesList.length >= 2 ? 2 : AppList.addressesList.length,
  //                           physics:  const NeverScrollableScrollPhysics(),
  //                           shrinkWrap: true,
  //                           itemBuilder: (context, index) {
  //                             int lastIndex = AppList.addressesList.length - 1 - index;
  //                             double latitude = AppList.addressesList[lastIndex]["latitude"];
  //                             double longitude = AppList.addressesList[lastIndex]["longitude"];
  //                             LatLng location = LatLng(latitude, longitude);
  //                             String address = AppList.addressesList[lastIndex]["address"];
  //                             String street = AppList.addressesList[lastIndex]["street"];
  //                             String instruction = AppList.addressesList[lastIndex]["instruction"];
  //                             return LocationSelectionTile(location: location, address: address, street: street, instruction: instruction.isNotEmpty?instruction:"",index: index, selectedValue: _value, onChanged: (value) {
  //                               setState((){
  //                                 _value = value;
  //                               });
  //                             },) ;
  //                           },),
  //
  //                         ListTile(
  //                           onTap: () {
  //                             Navigator.pop(context);
  //                             Navigator.push(context, MaterialPageRoute(builder: (context) => const AddLocationMap(),));
  //                           },
  //                           dense: true,
  //                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
  //                           leading:  Icon(Icons.add,size: 26,color: AppColors.mainColor,),
  //                           title: Text("Add a new Location",style: GoogleFonts.poppins(
  //                             fontSize:15,fontWeight:FontWeight.w500,color:AppColors.mainColor,),),
  //                         ),
  //
  //                       ],
  //                     ),
  //                   ),
  //                 ),
  //               );
  //             }
  //         );
  //       });
  // }
}
