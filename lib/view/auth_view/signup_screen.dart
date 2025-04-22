import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/view/auth_view/login_screen.dart';
import 'package:tailor_book/widgets/auth_screen_widget.dart';

import '../../utils/app_color.dart';
import '../../widgets/app_widgets.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SingleChildScrollView(
          child: AuthScreenWidget(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Text(
                    "Create Account",
                    style: GoogleFonts.poppins(fontSize: 26,fontWeight: FontWeight.w600)
                  ),
                  SizedBox(height: 10),
                  Text("Sign up to get started",
                      style: GoogleFonts.poppins(
                          fontSize: 15, color: AppColors.grey1)),
                  SizedBox(height: 10),
                  AppWidgets.labelText("Name"),
                  TextFormField(
                    style: GoogleFonts.poppins(
                        fontSize: 16,
                        color: AppColors.black,
                        fontWeight: FontWeight.w400),
                    decoration: InputDecoration(
                        hintText: "Name",
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
          
                  SizedBox(height: 10),
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
          
                  SizedBox(height: 10),
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
                  SizedBox(height: 30),
                  AppWidgets.mainButton("Sign Up", (){}),
                  SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Already have an account?",
                        style: GoogleFonts.poppins(),
                      ),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => LoginScreen()),
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            visualDensity:
                            VisualDensity(horizontal: -3, vertical: -4),
                            padding: EdgeInsets.zero,
                            overlayColor: Colors.transparent),
                        child: Text(
                          "Login",
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
        ),
      ),
    );
  }
}
