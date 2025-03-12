
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/model/gallery_model.dart';

import '../../utils/app_color.dart';

class SimilarItemCard extends StatelessWidget {
  final GalleryModel item;
  const SimilarItemCard({super.key, required this.item, });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Container(
        height: 112,
        width: 160,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(20),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.1),offset: const Offset(0,2),blurRadius:  6.800000190734863)
            ]
        ),
        child: Column(
          children: [
            Container(
              height: 130,
              decoration:  BoxDecoration(
                  borderRadius: const BorderRadius.only(topRight: Radius.circular(20),topLeft: Radius.circular(20)),
                  image: DecorationImage(image: NetworkImage(item.image),fit: BoxFit.cover)
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8,vertical: 3),
              child: Text(" store payment cards, boarding passes, and loyalty cards",style: GoogleFonts.poppins(
                  fontWeight:FontWeight.w400,fontSize:12, color:AppColors.black6,),maxLines: 2,textAlign: TextAlign.center,overflow: TextOverflow.ellipsis,),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Rs.1200",style: GoogleFonts.poppins(fontSize:13,fontWeight:FontWeight.w500,color:AppColors.primaryColor2,)),
                  const SizedBox(width: 5,),
                  Text("Rs. 1500",style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:AppColors.black6,decoration:TextDecoration.lineThrough,),),
                  const Spacer(),
                  Column(
                    children: [
                      RatingBar.builder(
                        itemSize: 10,
                        initialRating: 3.5,
                        minRating: 1,
                        direction: Axis.horizontal,
                        allowHalfRating: true,
                        itemCount: 5,
                        itemPadding:  EdgeInsets.zero,
                        itemBuilder: (context, _) => const Icon(
                          Icons.star, color: Colors.amber,
                        ),
                        onRatingUpdate: (rating) {},
                      ),
                      Text("3.5 Rating",style: GoogleFonts.poppins(fontSize:10,fontWeight:FontWeight.w400,color:AppColors.black6,),)
                    ],
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}