import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/view/auth_view/otp_email_screen.dart';
import 'package:tailor_book/view/auth_view/signup_screen.dart';
import 'package:tailor_book/view/auth_view/otp_screen.dart';
import 'package:tailor_book/view/tailor_side_view/tab_screen.dart';
import 'package:tailor_book/widgets/app_widgets.dart';
import 'package:tailor_book/widgets/auth_screen_widget.dart';

import '../../utils/app_color.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
          backgroundColor: AppColors.background,
          body: SingleChildScrollView(
            child: AuthScreenWidget(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24),
                child: Column(
                  children: [
                    Text("Welcome Back!",
                        style: GoogleFonts.poppins(
                          fontSize: 26,
                          fontWeight: FontWeight.w600,
                        )),
                    SizedBox(height: 10),
                    Text("Login to your account",
                        style: GoogleFonts.poppins(
                            fontSize: 15, color: AppColors.grey1)),
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
                              borderSide:
                                  BorderSide(color: AppColors.grey1, width: 1),
                              borderRadius: BorderRadius.circular(25)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primaryColor2, width: 1),
                              borderRadius: BorderRadius.circular(25))),
                    ),
                    SizedBox(height: 15),
                    AppWidgets.labelText("Password"),
                    TextFormField(
                      style: GoogleFonts.poppins(
                          fontSize: 16,
                          color: AppColors.black,
                          fontWeight: FontWeight.w400),
                      decoration: InputDecoration(
                          hintText: "Password",
                          hintStyle: GoogleFonts.poppins(
                              fontSize: 15,
                              color: AppColors.grey1,
                              fontWeight: FontWeight.w400),
                          contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          enabledBorder: OutlineInputBorder(
                              borderSide:
                                  BorderSide(color: AppColors.grey1, width: 1),
                              borderRadius: BorderRadius.circular(25)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                  color: AppColors.primaryColor2, width: 1),
                              borderRadius: BorderRadius.circular(25)),
                          suffixIcon: InkWell(
                            onTap: () {},
                            borderRadius: BorderRadius.circular(25),
                            child: Icon(
                              Icons.remove_red_eye_outlined,
                            ),
                          )),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton(
                          onPressed: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => OtpEmailScreen(),));
                          },
                          style: ElevatedButton.styleFrom(
                              visualDensity: VisualDensity(vertical: -2),
                              overlayColor: Colors.transparent),
                          child: Text(
                            "Forgot Password?",
                            style: GoogleFonts.poppins(
                                fontSize: 14, color: AppColors.primaryColor2),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    AppWidgets.mainButton("Login", () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => TabScreen(),));
                    }),
                    SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Don't have an account? ",
                          style: GoogleFonts.poppins(),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SignupScreen()),
                            );
                          },
                          style: ElevatedButton.styleFrom(
                              visualDensity:
                                  VisualDensity(horizontal: -3, vertical: -4),
                              padding: EdgeInsets.zero,
                              overlayColor: Colors.transparent),
                          child: Text(
                            "Sign Up",
                            style: GoogleFonts.poppins(
                                fontSize: 14,
                                color: AppColors.primaryColor2,
                                fontWeight: FontWeight.w500),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )),
    );
  }
}
