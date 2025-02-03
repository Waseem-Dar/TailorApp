import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../main.dart';
import '../utils/app_color.dart';

class AppWidgets {


  static Widget labelText(String label) {
    return Container(
      margin: const EdgeInsets.only(left: 16),
      width: double.infinity,
      child: Text(
        label,
        style: GoogleFonts.poppins(
            fontWeight: FontWeight.w400, fontSize: 14, height: 2.5),
      ),
    );
  }

 static Widget mainButton(String label,VoidCallback onTap){
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25),
            gradient: LinearGradient(
                colors: [
                  AppColors.primaryColor2,
                  AppColors.primaryColor1
                ],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight)),
        child: Center(child: Text(label,style: GoogleFonts.poppins(fontSize: 16,fontWeight: FontWeight.w600,color: AppColors.white),),),
      ),
    );
 }

 static Widget labelText1(String text){
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.symmetric(vertical: 10),
        child: Text(text,style: GoogleFonts.poppins(fontSize:14,fontWeight:FontWeight.w500,color:Colors.black),textAlign: TextAlign.left,));
 }



  static Widget toggleButton(bool value,String icon,String text,VoidCallback onTap){
    return InkWell(
      onTap:onTap,
      child: Container(
        width: mq.width/2-36,
        height: 66,
        decoration: BoxDecoration(
            color:value?AppColors.primaryColor2: AppColors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(
                color: AppColors.black.withOpacity(0.1),offset: const Offset(0, 4),blurRadius:11.199999809265137
            )]
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ImageIcon( AssetImage(icon),size: 29,color: value?AppColors.white:AppColors.primaryColor2 ,),
            Text(text,style: GoogleFonts.poppins(fontSize:15,fontWeight:FontWeight.w500,color:value?AppColors.white:AppColors.black)),

          ],
        ),
      ),
    );
  }


  static Widget newClientImagesCard(String text,String image,VoidCallback onTap){
    return InkWell(
      onTap:onTap,
      child: Container(
        width: mq.width/2-36,
        height: 130,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
            color:AppColors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [BoxShadow(
                color: AppColors.black.withOpacity(0.1),offset: const Offset(0, 4),blurRadius:11.199999809265137
            )]
        ),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
              color: AppColors.grey2.withOpacity(0.3),
                image: DecorationImage(image: NetworkImage("https://toppng.com/uploads/preview/add-camera-icon-icon-add-11553485583calilemiyg.png"))
              ),
              // child:Image.network(image,fit: BoxFit.cover,),
            ),
            // ImageIcon( AssetImage(icon),size: 29,color: value?AppColors.white:AppColors.primaryColor2 ,),
            Text(text,style: GoogleFonts.poppins(fontSize:15,fontWeight:FontWeight.w500,color:AppColors.black)),

          ],
        ),
      ),
    );
  }

}
