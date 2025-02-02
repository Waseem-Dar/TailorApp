import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_color.dart';

class TextFieldWidget extends StatelessWidget {
  final String hint;
  const TextFieldWidget({super.key, required this.hint});

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 36,
      child: TextFormField(
        style: GoogleFonts.poppins(
            fontSize: 16,
            color: AppColors.black,
            fontWeight: FontWeight.w400),
        decoration: InputDecoration(

          hintText: hint,
          // isDense: true,
          hintStyle: GoogleFonts.poppins(
              fontSize: 15,
              color: AppColors.grey1,
              fontWeight: FontWeight.w400),
          contentPadding: EdgeInsets.fromLTRB(15, 5, 15, 5),
          border: UnderlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          enabledBorder: OutlineInputBorder(
              borderSide:
              BorderSide(color: AppColors.grey2, width: 1),
              borderRadius: BorderRadius.circular(25)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                  color: AppColors.primaryColor2, width: 1),
              borderRadius: BorderRadius.circular(25)),
        ),
      ),
    );
  }
}
