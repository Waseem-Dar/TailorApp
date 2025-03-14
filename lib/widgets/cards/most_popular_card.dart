import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../utils/app_color.dart';

class MostPopularCard extends StatefulWidget {
  final String image;
  const MostPopularCard({super.key, required this.image,});

  @override
  State<MostPopularCard> createState() => _MostPopularCardState();
}

class _MostPopularCardState extends State<MostPopularCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      borderRadius: BorderRadius.circular(30),
      onTap: () {},
      child: Container(
        width: 212,
        height: 78,
        padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 3),
        margin: const EdgeInsets.only(right: 6),
        decoration: BoxDecoration(
          color: AppColors.whiteGrey1,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Row(
          children: [
            Container(
              width: 48,
              height: 48,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25),
                  image: DecorationImage(image: NetworkImage(widget.image),fit: BoxFit.cover)
              ) ,
            ),
            const SizedBox(width: 10,),
            Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
                Text("Spacial Fashion",style: GoogleFonts.poppins(fontSize:13,fontWeight:FontWeight.w500,color:Colors.black),),
                SizedBox(
                    width:128,
                    height: 25,
                    child: Text("Women'S Casual V-Neck Geometric-pattern Tunic Dress, Polyester, Woven, 140g/㎡, for Adult",style: GoogleFonts.poppins(fontSize:9,fontWeight:FontWeight.w400,color:AppColors.black6),overflow: TextOverflow.ellipsis,maxLines: 2,)),
                RatingBar.builder(
                  itemSize: 8,
                  initialRating: 4.5,
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.only(right: 1.0),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                  },
                ),
                Row(
                  children: [
                    Text("4.5 Rating",style: GoogleFonts.poppins(fontSize:8,fontWeight:FontWeight.w400,color:AppColors.black6),),
                    const SizedBox(width: 45,),
                    Text("Popular",style: GoogleFonts.poppins(fontSize:8,fontWeight:FontWeight.w500,color:AppColors.black6),),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );;
  }
}
