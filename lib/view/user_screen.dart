import 'dart:developer';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/utils/app_color.dart';
import 'package:tailor_book/utils/app_icons.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}
List   list = [1,2,3,4,5,6,7,8,9,9,10,11,12,13,14,15];

class _UserScreenState extends State<UserScreen> {
  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor2,
          surfaceTintColor: Colors.transparent,
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
                  AssetImage(AppIcons.notificationIcon),
                  color: AppColors.white,
                ),
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, 60),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
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
                    contentPadding: const EdgeInsets.symmetric(horizontal: 16),
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
          ),
        ),
        body: ListView.builder(
          itemCount: list.length,
          itemBuilder: (context, index) {
            return Dismissible(
              key:  Key(index.toString()),
              background: Container(
                color:  AppColors.red.withOpacity(0.73),
                padding: EdgeInsets.only(right: 20),
                alignment: Alignment.centerRight,
                child: Icon(Icons.delete,color: AppColors.white,size: 35,),
              ),
              direction: DismissDirection.endToStart,
              confirmDismiss: (DismissDirection direction) async {
                return await showDeleteDialog(context,index);
              },
              child: Column(
                children: [
                  ListTile(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 5, horizontal: 16),
                    leading: Container(
                      height: 57,
                      width: 57,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        color: AppColors.grey2.withOpacity(0.2),
                        shape: BoxShape.circle,
                      ),
                      child: CachedNetworkImage(
                        imageUrl:
                            "https://encrypted-tbn0.gstatic.om/images?q=tbn:ANd9GcQO1kJt8LJRx4M1ZiMX0p3x7ScJ0vJzizJeAoPw-NY4LXQUvYbhYetcqweLkHUyI1CqJKs&usqp=CAU",
                        fit: BoxFit.cover,
                        placeholder: (context, url) => Padding(
                            padding: EdgeInsets.all(10),
                            child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) => Icon(
                          Icons.person,
                          color: AppColors.grey2,
                          size: 45,
                        ),
                      ),
                    ),
                    title: Padding(
                      padding: const EdgeInsets.only(bottom: 5),
                      child: Text("Sabir Saleem",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),),
                    ),

                    subtitle: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('This is a open source and free UI library.',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color:const Color(0xFF6C6C6C) ),maxLines: 1,overflow: TextOverflow.ellipsis,),
                        Text('$index',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color:const Color(0xFF6C6C6C) ),maxLines: 1,),
                      ],
                    ),
                    trailing:  Icon(
                      Icons.arrow_forward_ios,
                      size: 18,
                    ),
                  ),
                  Divider(
                    thickness: 0,
                    height: 0,
                  )
                ],
              ),
            );
          },
        ));
  }

  Future showDeleteDialog(BuildContext context, int index)async{
    return await showDialog<bool>(
      context: context,
      builder: (BuildContext context) {
        return  AlertDialog(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(19)),
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
          insetPadding: const EdgeInsets.symmetric(horizontal: 30),
          contentPadding: const EdgeInsets.only( right: 24,left: 24,top: 24,bottom: 0),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Are you sure you want to remove this address/location?",
                style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w400,color: Colors.black),textAlign: TextAlign.center,),
              const SizedBox(height: 15,),
              Divider(
                height:1,
                color: const Color(0xFF939393).withOpacity(0.29),
              ),
            ],
          ),
          actionsPadding:  EdgeInsets.zero,
          actionsAlignment: MainAxisAlignment.spaceEvenly,
          actions: [
            TextButton(
                onPressed: (){
                  // AppList.addressesList.removeAt(index);
                  Navigator.pop(context,true);
                }, child: Text("Yes",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 15,color: AppColors.red),)),
            SizedBox(height:50,child: VerticalDivider(color: const Color(0xFF939393).withOpacity(0.29),width: 1,endIndent: 15,)),
            TextButton(onPressed: (){
              Navigator.pop(context,false);
            }, child: Text("No",style: GoogleFonts.poppins(fontWeight: FontWeight.w500,fontSize: 15,color: const Color(0xFF5C90DC)),))
          ],
        );
      },
    );
  }

}
