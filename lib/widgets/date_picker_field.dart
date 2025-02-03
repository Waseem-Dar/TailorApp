import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';

import '../utils/app_color.dart';

class DatePickerField extends StatefulWidget {
  const DatePickerField({super.key});

  @override
  State<DatePickerField> createState() => _DatePickerFieldState();
}

class _DatePickerFieldState extends State<DatePickerField> {
  final TextEditingController _dateController = TextEditingController();

  // Function to show date picker
  Future<void> _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null) {
      setState(() {
        _dateController.text = DateFormat('dd-MM-yyyy').format(pickedDate);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40,
      child: TextFormField(
        controller: _dateController,
        readOnly: true,
        style: GoogleFonts.poppins(
            fontSize: 16,
            color: AppColors.black,
            fontWeight: FontWeight.w400),
        decoration: InputDecoration(
        contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
          hintText: "Select Date",
          enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: AppColors.grey2, width: 1),
              borderRadius: BorderRadius.circular(10)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.primaryColor2, width: 1),
              borderRadius: BorderRadius.circular(10)),
          suffixIcon: IconButton(

            icon: Icon(Icons.calendar_month_outlined, color: AppColors.primaryColor2,size: 24,),
            onPressed: () => _selectDate(context), // Show date picker
          ),
        ),
      ),
    );
  }
}
