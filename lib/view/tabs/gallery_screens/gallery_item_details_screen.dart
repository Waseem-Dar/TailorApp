import 'package:flutter/material.dart';
import 'package:tailor_book/utils/app_color.dart';

import '../../../main.dart';

class GalleryItemDetailsScreen extends StatefulWidget {
  const GalleryItemDetailsScreen({super.key});

  @override
  State<GalleryItemDetailsScreen> createState() => _GalleryItemDetailsScreenState();
}

class _GalleryItemDetailsScreenState extends State<GalleryItemDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Stack(
            children: [
              SizedBox(
                width: double.infinity,
                height: mq.height * .55,
                child: Card(
                  // shadowColor: Constant.pink,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  elevation: 10,
                  color: Colors.white,
                  surfaceTintColor: Colors.white,
                  child: Center(
                      child: Container(
                        margin: const EdgeInsets.all(60),
                        decoration: BoxDecoration(
                          // image: DecorationImage(
                            // image: NetworkImage(getIndex["image"]),
                          // ),
                        ),
                      )),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10,vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Card(
                      elevation: 10,
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      shape: const StadiumBorder(),
                      child: IconButton(
                        onPressed: () {Navigator.pop(context);},
                        icon: Icon(Icons.arrow_back_ios_new, color: AppColors.primaryColor2, size: 30,),
                      ),
                    ),
                    Card(
                      elevation: 10,
                      color: Colors.white,
                      surfaceTintColor: Colors.white,
                      shape: const StadiumBorder(),
                      // child: IconButton(
                      //   onPressed: () {
                          // Apis.toggleFavorites(getIndex);
                        // },
                        // icon: Consumer(
                        //   builder: (context, ref, child) {
                        //     final favoritesSnapshot = ref.watch(favoriteStreamProvider);
                        //
                        //     // Check if the product exists in the favorites collection
                        //     final isFav = favoritesSnapshot.maybeWhen(
                        //       data: (docs) {
                        //         return docs.docs.any((favDoc) => favDoc.id == getIndex.id);
                        //       },
                        //       orElse: () => false,
                        //     ) ?? false;
                        //     return Icon(
                        //       isFav ? Icons.favorite : Icons.favorite_border_outlined,color: AppColors.primaryColor2,size: 30 ,
                        //
                        //     );
                        //   },
                        // ),
                      // ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    // SizedBox(
                    //     width: 200,
                    //     child: Text(getIndex['title'], style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 24), maxLines: 1,
                    //     )),
                    // RatingBar.builder(
                    //   itemSize: 20,
                    //   initialRating: getIndex['rating']['rate'] == 3?3.0:getIndex ['rating']['rate'],
                    //   minRating: 1,
                    //   direction: Axis.horizontal,
                    //   allowHalfRating: true,
                    //   itemCount: 5,
                    //   unratedColor: Colors.grey,
                    //   itemPadding:
                    //   const EdgeInsets.only(right: 4),
                    //   itemBuilder: (context, _) =>
                    //   const Icon(Icons.star, color: Colors.amber,
                    //   ),
                    //   onRatingUpdate: (rating) {
                    //     Apis.updateProductRating(rating, getIndex);
                    //   },
                    // ),
                  ],
                ),

                Text("\$ 120",style:const  TextStyle(fontSize: 20,fontWeight: FontWeight.bold),) ,
              ],
            ),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text('descripdfgf dfkg dfg dkfg dfgk dfgkdfjgn dkf dkfgh wief wkefn werfg erkfg ekrg ekrgjne gkejg ekrgj ekrgjn tion'),
          ),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor2,
                  ),
                  onPressed: ()async{
                    // await Apis.toggleCart(getIndex);
                  }, child: const Text('Add To Cart',style: TextStyle(color: Colors.white),)),
            ),
          )
        ],
      ),
    );
  }
}
