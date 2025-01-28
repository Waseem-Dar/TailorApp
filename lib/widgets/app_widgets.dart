import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

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

}
