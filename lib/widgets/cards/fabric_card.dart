
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/model/gallery_model.dart';

import '../../utils/app_color.dart';

class FabricCard extends StatelessWidget {
  final GalleryModel item;
  final VoidCallback onTap;
  const FabricCard({super.key, required this.item, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 3),
      width:81,
      height: 120,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(45),
          border: Border.all(color: AppColors.white1,width: 1)
      ),
      child: Center(
        child: InkWell(
          borderRadius: BorderRadius.circular(45),
          onTap: onTap,
          child: Container(
            width: 63,
            height: 94,
            decoration: BoxDecoration(
                color: AppColors.whiteGrey1,
                borderRadius: BorderRadius.circular(45)
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height:50,
                  padding: const EdgeInsets.symmetric(horizontal: 8,),
                  child: Image.network(item.image),
                ),
                Text(item.name,style: GoogleFonts.poppins(fontSize:13,fontWeight:FontWeight.w500,color:Colors.black.withOpacity(.25),),)
              ],
            ),
          ),
        ),
      ),
    );;
  }
}
