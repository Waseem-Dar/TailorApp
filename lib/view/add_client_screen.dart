import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/utils/app_icons.dart';
import 'package:tailor_book/widgets/text_field_widget.dart';

import '../utils/app_color.dart';
import '../widgets/app_widgets.dart';

class AddClientScreen extends StatefulWidget {
  const AddClientScreen({super.key});

  @override
  State<AddClientScreen> createState() => _AddClientScreenState();
}

class _AddClientScreenState extends State<AddClientScreen> {

  bool male = false;
  bool female = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor2,
          iconTheme: IconThemeData(color: AppColors.white),
          title: Text(
            "New Client",
            style: GoogleFonts.poppins(color: AppColors.white),
          ),
        ),
        body: ListView(
          children: [
           Padding(
             padding: const EdgeInsets.symmetric(horizontal: 24),
             child: Column(
               children: [
                 AppWidgets.labelText1("Client Details:"),
                 AppWidgets.labelText("Name"),
                 TextFieldWidget(hint: "Name"),
                 AppWidgets.labelText("Phone"),
                 TextFieldWidget(hint: "Phone"),
                 AppWidgets.labelText("Address"),
                  TextFieldWidget(hint: "Address"),
                 AppWidgets.labelText("Unique Number"),
                  TextFieldWidget(hint: "Cloth Unique Number"),
                 SizedBox(height: 25,),
                 Divider(thickness: 2,height: 0,),
                 AppWidgets.labelText1("Client Details:"),
                 Row(
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [

                     AppWidgets.toggleButton(male ,"Male",AppIcons.maleIcon,() {
                       setState(() {
                         male = !male;
                         if (male) {
                           female = false;
                         }
                       });
                     },),
                     const SizedBox(width: 10),
                     AppWidgets.toggleButton(female,"Female",AppIcons.femaleIcon,() {
                       setState(() {
                         female = !female;
                         if (female) {
                           male = false;
                         }
                       });
                     },)
                   ],
                 ),
               ],
             ),
           ),

          ],
        ),
      ),
    );
  }
}
