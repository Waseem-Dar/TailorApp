class GetMonth{
  static String getMonthName(int month) {
    switch (month) {
      case 1:
        return 'Jan';
      case 2:
        return 'Feb';
      case 3:
        return 'Mar';
      case 4:
        return 'Apr';
      case 5:
        return 'May';
      case 6:
        return 'Jun';
      case 7:
        return 'Jul';
      case 8:
        return 'Aug';
      case 9:
        return 'Sep';
      case 10:
        return 'Oct';
      case 11:
        return 'Nov';
      case 12:
        return 'Dec';
      default:
        return '';
    }
  }

}

// CarouselSlider(
//   options: CarouselOptions(
//     height: 150,
//     aspectRatio: 16 / 9,
//     viewportFraction: 0.85,
//     initialPage: 0,
//     enableInfiniteScroll: true,
//     reverse: false,
//     autoPlay: true,
//     autoPlayInterval: Duration(seconds: 3),
//     autoPlayAnimationDuration: Duration(milliseconds: 800),
//     autoPlayCurve: Curves.fastOutSlowIn,
//     enlargeCenterPage: true,
//     enlargeFactor: 0.15,
//     scrollDirection: Axis.horizontal,
//   ),
//   items: ClothImages.CarouselSliderImages.map((i) {
//     return Builder(
//       builder: (BuildContext context) {
//         return Container(
//             clipBehavior: Clip.hardEdge,
//             width: MediaQuery.of(context).size.width,
//             margin: EdgeInsets.symmetric(horizontal: 5.0),
//             decoration: BoxDecoration(
//                 color: Colors.amber,
//                 borderRadius: BorderRadius.circular(20)),
//             child: Image.network(
//               i,
//               fit: BoxFit.cover,
//             ));
//       },
//     );
//   }).toList(),
// ),