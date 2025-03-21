import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tailor_book/widgets/app_widgets.dart';

import '../../utils/app_color.dart';
import '../../utils/app_icons.dart';


class GenderOrdersActivityCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 500,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 22),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),

          ),
        ),
        Container(
          height: 497,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 16,),
          padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: const Color(0xFF040F15).withOpacity(0.05),
                  spreadRadius: -18,
                  blurRadius: 30,
                  offset: const Offset(0, 20),
                ),
              ]
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Title
              Text(
                'Gender',
                style: GoogleFonts.nunito(
                  color: AppColors.black3,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const SizedBox(height: 70),

              // Circular Chart
              Stack(
                alignment: Alignment.center,
                children: [
                  CircularPercentIndicator(
                    startAngle: 40,
                    radius: 120.0,
                    lineWidth: 16.0,
                    percent: 0.42,
                    center:Container(
                      width: 110,
                      height: 110,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(60),
                          boxShadow: [
                            BoxShadow(
                                color: Colors.black.withOpacity(0.14),
                                spreadRadius:0 ,
                                blurRadius:50 ,
                                offset: const Offset(4, 4)
                            ),
                            BoxShadow(
                                color: Colors.white.withOpacity(0.9),
                                spreadRadius:0 ,
                                blurRadius:16 ,
                                offset: const Offset(-4, -4)
                            ),
                          ]
                      ),
                      child: Center(
                        child: Icon(Icons.circle_outlined),
                      ),
                    ),
                    progressColor: AppColors.purple,
                    backgroundColor: AppColors.yellow1,
                    circularStrokeCap: CircularStrokeCap.round,
                  ),

                  // Percent Text Indicators
                  Positioned(
                    left: 10,
                    top: 20,
                    child:AppWidgets.showPercentage("58"),
                  ),
                  Positioned(
                    right: 10,
                    bottom:20,
                    child:AppWidgets.showPercentage("42"),
                  ),
                ],
              ),

              const SizedBox(height: 70),

              // Male & Female Stats
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 14,
                        height: 14,
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.purple,width: 3)
                        ) ,
                      ),
                      const SizedBox(width: 10),
                      RichText(
                        textAlign: TextAlign.center,
                        text:  TextSpan(
                          children: [
                            TextSpan(
                              text: "Male: ",
                              style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: AppColors.black2,
                              ),
                            ),
                            TextSpan(
                              text: "352k",
                              style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: AppColors.black3,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 16),
                  Row(
                    children: [
                      Container(
                        width: 14,
                        height: 14,
                        decoration:BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(color: AppColors.yellow1,width: 3)
                        ) ,
                      ),
                      const SizedBox(width: 10),
                      RichText(
                        textAlign: TextAlign.center,
                        text:  TextSpan(
                          children: [
                            TextSpan(
                              text: "Female: ",
                              style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w400,
                                color: const Color(0xFF637085),
                              ),
                            ),
                            TextSpan(
                              text: "834k",
                              style: GoogleFonts.nunito(
                                fontSize: 15,
                                fontWeight: FontWeight.w600,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
