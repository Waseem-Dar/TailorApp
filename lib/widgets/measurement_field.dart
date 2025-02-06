import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../utils/app_color.dart';

class MeasurementField extends StatefulWidget {
  final String itemName;
  const MeasurementField({super.key, required this.itemName});

  @override
  State<MeasurementField> createState() => _MeasurementFieldState();
}

class _MeasurementFieldState extends State<MeasurementField> {
  @override
  Widget build(BuildContext context) {
    return  Row(
      textBaseline: TextBaseline.ideographic,
      crossAxisAlignment: CrossAxisAlignment.baseline,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      spacing: 15,
      children: [
        Expanded(child: Text(widget.itemName,style: GoogleFonts.poppins(fontSize: 17),)),
        SizedBox(
          height: 36,
          width: 85,
          child: TextFormField(
            keyboardType:  TextInputType.number,
            decoration: InputDecoration(
                hintText: "00",
                border: UnderlineInputBorder(

                )
            ),
          ),
        ),
        Icon(Icons.circle_outlined,size: 15,),
        Text("inc",style: GoogleFonts.poppins(fontSize: 17),),
      ],
    );
  }
}
