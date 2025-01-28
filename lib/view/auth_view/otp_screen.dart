import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/utils/app_color.dart';
import 'package:tailor_book/widgets/auth_screen_widget.dart';
import 'package:flutter_otp_text_field/flutter_otp_text_field.dart';

import '../../widgets/app_widgets.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: AuthScreenWidget(
            child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: Column(
            children: [
              Text("OTP verification",
                  style: GoogleFonts.poppins(
                    fontSize: 26,
                    fontWeight: FontWeight.w600,
                  )),
              SizedBox(height: 10),
              Text("We have send OTP on your email",
                  style: GoogleFonts.poppins(
                      fontSize: 15, color: AppColors.grey1)),
              SizedBox(height: 30),
              OtpTextField(
                numberOfFields: 5,
                showFieldAsBox: true,
                borderRadius: BorderRadius.circular(25),
                borderColor: AppColors.grey1,
                borderWidth: 1,
                enabledBorderColor: AppColors.grey1,
                focusedBorderColor: AppColors.primaryColor2,

                fieldHeight: 50,
                fieldWidth: 50,
                onCodeChanged: (String code) {},
                onSubmit: (String verificationCode) {}, // end onSubmit
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't receive a OTP? ",
                    style: GoogleFonts.poppins(),
                  ),
                  TextButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        visualDensity:
                        VisualDensity(horizontal: -3, vertical: -4),
                        padding: EdgeInsets.zero,
                        overlayColor: Colors.transparent),
                    child: Text(
                      "Resend OTP",
                      style: GoogleFonts.poppins(
                          fontSize: 14,
                          color: AppColors.primaryColor2,
                          fontWeight: FontWeight.w500,
                        decoration:  TextDecoration.underline
                      ),
                    ),
                  ) ,
                ],
              ),
              SizedBox(height: 30),
              AppWidgets.mainButton("Done", () {
                // Navigator.push(context, MaterialPageRoute(builder: (context) => OTPScreen(),));
              }),

            ],
          ),
        )),
      ),
    );
  }
}
