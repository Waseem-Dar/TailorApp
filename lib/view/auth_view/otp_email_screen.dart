import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/view/auth_view/otp_screen.dart';
import 'package:tailor_book/widgets/auth_screen_widget.dart';

import '../../utils/app_color.dart';
import '../../widgets/app_widgets.dart';

class OtpEmailScreen extends StatefulWidget {
  const OtpEmailScreen({super.key});

  @override
  State<OtpEmailScreen> createState() => _OtpEmailScreenState();
}

class _OtpEmailScreenState extends State<OtpEmailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthScreenWidget(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            Text("Enter your email",
                style: GoogleFonts.poppins(
                  fontSize: 26,
                  fontWeight: FontWeight.w600,
                )),
            SizedBox(height: 10),
            Text("We will send a confirmation code",
                style:
                    GoogleFonts.poppins(fontSize: 15, color: AppColors.grey1)),
            SizedBox(height: 30),
            AppWidgets.labelText("Email"),
            TextFormField(
              style: GoogleFonts.poppins(
                  fontSize: 16,
                  color: AppColors.black,
                  fontWeight: FontWeight.w400),
              decoration: InputDecoration(
                  hintText: "Email",
                  hintStyle: GoogleFonts.poppins(
                      fontSize: 15,
                      color: AppColors.grey1,
                      fontWeight: FontWeight.w400),
                  contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: AppColors.grey1, width: 1),
                      borderRadius: BorderRadius.circular(25)),
                  focusedBorder: OutlineInputBorder(
                      borderSide:
                          BorderSide(color: AppColors.primaryColor2, width: 1),
                      borderRadius: BorderRadius.circular(25))),
            ),
            SizedBox(height: 30),
            AppWidgets.mainButton("Next", () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen(),));
            }),
          ],
        ),
      )),
    );
  }
}
