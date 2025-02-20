import 'package:animate_do/animate_do.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:getwidget/components/list_tile/gf_list_tile.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_color.dart';

class OrderScreenTileCard extends StatelessWidget {
  const OrderScreenTileCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 15,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.fromLTRB(16, 10, 16, 0),
          child: Card(
            surfaceTintColor: AppColors.white,
            color: AppColors.white,
            child: GFListTile(
              onTap: () {

              },
                padding: EdgeInsets.only(right: 10),
                margin: EdgeInsets.zero,
                avatar: Container(
                  clipBehavior: Clip.hardEdge,
                    width: 80,
                    height: 80,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(12),
                          bottomLeft: Radius.circular(12))),
                  child: Image.network("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO1kJt8LJRx4M1ZiMX0p3x7ScJ0vJzizJeAoPw-NY4LXQUvYbhYetcqweLkHUyI1CqJKs&usqp=CAU",fit: BoxFit.cover,),
                  // child: CachedNetworkImage(
                  //   imageUrl:
                  //   "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQO1kJt8LJRx4M1ZiMX0p3x7ScJ0vJzizJeAoPw-NY4LXQUvYbhYetcqweLkHUyI1CqJKs&usqp=CAU",
                  //   width: 80,
                  //   height: 80,
                  //   fit: BoxFit.cover,
                  //   placeholder: (context, url) => Padding(
                  //     padding: const EdgeInsets.all(25.0),
                  //     child: CircularProgressIndicator(),
                  //   ),
                  //   errorWidget: (context, url, error) => Container(
                  //       color: AppColors.grey2.withOpacity(0.2),
                  //       child: Icon(
                  //         Icons.error,
                  //         color:  AppColors.red,
                  //       )),
                  // ),
                ),
                title: Padding(
                  padding: const EdgeInsets.only(bottom: 5),
                  child: Text("Sabir Saleem",style: GoogleFonts.poppins(fontSize: 15,fontWeight: FontWeight.w600,color: Colors.black),),
                ),
                subTitle: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('This is a open source and free UI library.',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color:const Color(0xFF6C6C6C) ),maxLines: 1,overflow: TextOverflow.ellipsis,),
                    Text('UI library.',style: GoogleFonts.poppins(fontWeight: FontWeight.w400,fontSize: 12,color:const Color(0xFF6C6C6C) ),maxLines: 1,),
                  ],
                ),
                icon: Icon(
                  Icons.arrow_forward_ios,
                  size: 18,
                )),
          ),
        );
      },
    );
  }
}
