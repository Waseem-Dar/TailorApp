import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/utils/app_color.dart';
import 'package:tailor_book/utils/app_icons.dart';
import 'package:tailor_book/view/auth_view/login_screen.dart';
import 'package:tailor_book/view/client_side_view/client_tabs_screen.dart';


class ChoiceScreen extends StatelessWidget {
  const ChoiceScreen({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;

    return Scaffold(
      body: Center(
        child: Container(
          height: height,
          width: double.infinity,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [AppColors.primaryColor1, AppColors.primaryColor2],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter)),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // spacing: 50,
            children: [
              SizedBox(
                height: height * 0.09,
              ),
              Image.asset(AppIcons.logoIcon,width: 150,),
              SizedBox(
                height: height * 0.09,
              ),
              Text(
                "Welcome to Stitch Craft",
                style: TextStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.white,
                    fontSize: 26),
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Center(
                  child: Text(
                "The all-in one app for fashion designers and fashion shoppers",
                style: TextStyle(color: AppColors.white, fontSize: 16),
                textAlign: TextAlign.center,
              )),
              SizedBox(
                height: height * 0.12,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => ClientTabScreen(),));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      gradient: LinearGradient(
                          colors: [AppColors.white, AppColors.white],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight)),
                  child: Center(
                    child: Text(
                      "Client",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.primaryColor2),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: height * 0.03,
              ),
              InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen(),));
                },
                child: Container(
                  height: 50,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(color: AppColors.white)),
                  child: Center(
                    child: Text(
                      "Tailor",
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          fontWeight: FontWeight.w600,
                          color: AppColors.white),
                    ),
                  ),
                ),
              ),

            ],
          ),
        ),
      ),
    );
  }
}
