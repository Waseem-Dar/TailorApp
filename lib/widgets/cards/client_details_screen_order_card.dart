import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_color.dart';

class UserDetailsScreenOrderCard extends StatefulWidget {
  final String name;
  final String image;
  final String details;
  final String dDate;
  final String date;
  final int price;


  const UserDetailsScreenOrderCard({super.key, required this.name, required this.image, required this.details, required this.dDate, required this.date, required this.price,});

  @override
  State<UserDetailsScreenOrderCard> createState() => _UserDetailsScreenOrderCardState();
}

class _UserDetailsScreenOrderCardState extends State<UserDetailsScreenOrderCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      padding: const EdgeInsets.fromLTRB(16,16,11,16),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
              color: Colors.black.withOpacity(0.1),offset: const Offset(0, 4),blurRadius: 11.199999809265137)]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(widget.name,style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:15, color:Colors.black),maxLines: 1,),
          Text(widget.date,style: GoogleFonts.poppins(fontWeight:FontWeight.w400,fontSize:11, color:AppColors.black6)),
              const SizedBox(height: 5,),
          Divider(color: Colors.black26,endIndent: 10,indent: 10,height: 7,),
              const SizedBox(height: 5,),
          Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child:Image.network(widget.image,fit: BoxFit.cover,width: 75,height: 75,),
              ),
              const SizedBox(width: 20,),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.name,style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:14, color:Colors.black),maxLines: 1,),
                    Text(widget.details,style: GoogleFonts.poppins(fontWeight:FontWeight.w400,fontSize:12, color:Colors.black),maxLines: 1,),
                    const SizedBox(height: 5,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Text(widget.dDate,style: GoogleFonts.poppins(
                              fontWeight:FontWeight.w400,fontSize:12, color:AppColors.black6),maxLines: 1,overflow: TextOverflow.ellipsis,),
                        ),
                        Text("Rs. ${widget.price}",style: GoogleFonts.poppins(fontWeight:FontWeight.w500,fontSize:13, color:AppColors.primaryColor2)),
                      ],
                    ),

                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}