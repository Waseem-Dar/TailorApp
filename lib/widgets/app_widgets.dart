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


  static Widget addressTextFieldWidget(){
    return SizedBox(
      height: 110,
      child: TextFormField(

        minLines: 5,
        maxLines: 5,

        style: GoogleFonts.poppins(fontSize: 14, fontWeight: FontWeight.w400, color:AppColors.primaryColor2 ),
        decoration: InputDecoration(
          contentPadding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(23),
            borderSide: BorderSide(width: 1, color: AppColors.primaryColor2),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(23),
            borderSide: BorderSide(width: 1, color: AppColors.grey2),
          ),
        ),
      ),
    );
  }


  static Widget paymentField(String text){
    return Row(
      textBaseline: TextBaseline.ideographic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 10,
      children: [
        Expanded(child: Text(text,style: GoogleFonts.poppins(fontSize: 17),)),
        SizedBox(
          height: 36,
          width: 100,
          child: TextFormField(
            keyboardType:  TextInputType.number,
            decoration: InputDecoration(
                hintText: "Rs",
                border: UnderlineInputBorder(

                )
            ),
          ),
        )
      ],
    );
  }


  static Widget ClientContactWidget(String icon,double padding,VoidCallback onTap){
    return   InkWell(
      onTap: onTap,
      child: Container(
        height: 35,
        width: 35,
        padding: EdgeInsets.all(padding),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: AppColors.whiteGrey,width: 1,)
        ),
        child: ImageIcon(AssetImage(icon),color: AppColors.whiteGrey,),
      ),
    );
  }

  static Widget orderPerformanceWidget(String icon,String text,int orders,Color color ){
    return Container(
      width: mq.width/2-45,
      height: 85,
      color: color.withOpacity(0.15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ImageIcon(AssetImage(icon),color: color,),
          Text(text,style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w500,color: color),),
          Text(orders.toString(),style: GoogleFonts.poppins(fontSize: 13,fontWeight: FontWeight.w500,color: color),),
        ],
      ),
    );
  }


  static Widget showPercentage(String percent) {
    return Container(
      width: 56,
      height: 56,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.1),
            offset: const Offset(4, 8),
            blurRadius: 25,
            spreadRadius: 0,
          ),
        ],
      ),
      child: Center(
        child: RichText(
          textAlign: TextAlign.center,
          text:  TextSpan(
            children: [
              TextSpan(
                text: percent,
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              TextSpan(
                text: "%",
                style: GoogleFonts.nunito(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: AppColors.black2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}
