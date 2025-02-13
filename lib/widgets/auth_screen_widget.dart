import 'package:flutter/material.dart';
import 'package:tailor_book/utils/app_color.dart';

import '../utils/app_icons.dart';

class AuthScreenWidget extends StatelessWidget {
  final Widget child;
  const AuthScreenWidget({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipPath(
          clipper: CustomClipPath(),
          child: Container(
            width: double.infinity,
            height: 300,
            decoration: BoxDecoration(
              gradient: LinearGradient(colors: [
                AppColors.primaryColor1,AppColors.primaryColor2
              ],
              begin: Alignment.topCenter,end: Alignment.bottomCenter
              )
            ),
            child: Center(
              child:  Image.asset(AppIcons.logoIcon,width: 150,),
            ),
          ),
        ),
         child
      ], 
    );
  }
}




class CustomClipPath extends CustomClipper<Path>{
  @override
  getClip(Size size) {
    double w =size.width;
    double h =size.height;

    final path = Path();
    path.lineTo(0, h);
    path.quadraticBezierTo(w * 0.5, h-50, w, h);
    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip( CustomClipper<Path> oldClipper) {
    return false;
  }

}
