import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:tailor_book/widgets/app_widgets.dart';

import '../../main.dart';
import '../../utils/app_color.dart';
import '../../utils/app_icons.dart';


class GenderOrdersActivityCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 450,
      width: double.infinity,
      padding: const EdgeInsets.all(14),
      margin: const EdgeInsets.symmetric(horizontal: 24),
      decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [BoxShadow(
              color: AppColors.black.withOpacity(0.1),offset: const Offset(0, 4),blurRadius:11.199999809265137
          )]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // Title
          Container(
            width:double.infinity,
            child: Text(
              'Orders Activity',
              style: GoogleFonts.poppins(
                color: AppColors.black3,
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const SizedBox(height: 50),

          // Circular Chart
          Stack(
            alignment: Alignment.center,
            children: [
              SizedBox(
                height: mq.width *0.75,
                width: mq.width *0.9,
                child: PieChart(
                  PieChartData(
                    startDegreeOffset: 90,
                    sectionsSpace: 0,
                    sections: [
                      PieChartSectionData(
                          value: 30,
                          color: Colors.blue,
                          radius: 16,
                          badgeWidget: AppWidgets.showPercentage("58")
                      ),
                      PieChartSectionData(
                          value: 20,
                          color: Colors.amber,
                          radius: 16,
                          badgeWidget: AppWidgets.showPercentage("58")
                      ),
                      PieChartSectionData(
                          value: 50,
                          color: Colors.green,
                          radius: 16,
                          badgeWidget: AppWidgets.showPercentage("58")
                      ),
                    ],
                    centerSpaceRadius: 100, // Space for emoji
                  ),
                ),
              ),
              Container(
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
            ],
          ),

          const SizedBox(height: 50),

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
    );
  }
}
