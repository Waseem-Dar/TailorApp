import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:tailor_book/widgets/app_widgets.dart';
import 'package:tailor_book/widgets/cards/gender_orders_activity_card.dart';

import '../../main.dart';
import '../../utils/app_color.dart';
import '../../utils/app_icons.dart';
import '../../utils/date_time/get_month.dart';

class ReportsScreen extends StatefulWidget {
  const ReportsScreen({super.key});

  @override
  State<ReportsScreen> createState() => _ReportsScreenState();
}

class _ReportsScreenState extends State<ReportsScreen> {
  DateTime _selectedDate = DateTime.now();


  Future<void> _selectMonth(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
      initialEntryMode: DatePickerEntryMode.calendarOnly,
      initialDatePickerMode: DatePickerMode.year,
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor2,
        title: Text("Reports", style: GoogleFonts.poppins(color: AppColors.white),),
        iconTheme: IconThemeData(color: AppColors.white),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage(AppIcons.notificationIcon),
                color: AppColors.white,
              ),
            ),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(24,24,24,0),
        child: ListView(
          children: [
            //  Selecting Date
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Reporting Month", style: GoogleFonts.poppins(
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  color: AppColors.black,
                ),),
                InkWell(
                  highlightColor: Colors.transparent,
                  onTap: () => _selectMonth(context),
                  child: Row(
                    children: [
                      Text(
                          "${GetMonth.getMonthName(_selectedDate.month)} ${_selectedDate.year}",
                          style: GoogleFonts.poppins(fontWeight: FontWeight.w400),
                        ),

                      Icon(Icons.arrow_drop_down_outlined)
                    ],
                  ),
                ),
              ],
            ),
            //Today Reports
            SizedBox(height: 15,),
            Container(
              width: double.infinity,
              // height: 250,
              padding: EdgeInsets.all(14),
              decoration: BoxDecoration(
                  color: AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [BoxShadow(
                      color: AppColors.black.withOpacity(0.1),offset: const Offset(0, 4),blurRadius:11.199999809265137
                  )]
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Orders performance",style: GoogleFonts.poppins(fontWeight: FontWeight.w400),),
                  SizedBox(height: 14,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppWidgets.orderPerformanceWidget(AppIcons.dailyReportIcon, "Daily", 5, AppColors.green),
                      AppWidgets.orderPerformanceWidget(AppIcons.weeklyReportIcon, "Weekly", 23, AppColors.blue),
                    ],
                  ),
                  SizedBox(height: 14,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      AppWidgets.orderPerformanceWidget(AppIcons.monthlyReportIcon, "Monthly", 45, AppColors.yellow),
                      AppWidgets.orderPerformanceWidget(AppIcons.yearlyReportIcon, "Yearly", 856, AppColors.red),
                    ],
                  )
                ],
              ),
            ),
            GenderOrdersActivityCard()

          ],
        ),
      ),
    );
  }



}
