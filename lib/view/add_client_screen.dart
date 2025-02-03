import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/utils/app_icons.dart';
import 'package:tailor_book/widgets/text_field_widget.dart';

import '../utils/app_color.dart';
import '../widgets/app_widgets.dart';
import '../widgets/new_client_images_card.dart';

class AddClientScreen extends StatefulWidget {
  const AddClientScreen({super.key});

  @override
  State<AddClientScreen> createState() => _AddClientScreenState();
}

class _AddClientScreenState extends State<AddClientScreen> {

  bool male = false;
  bool female = false;

  int? selectedIndex;

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
                 AppWidgets.labelText1("Select Gender:"),
                 Row(
                   spacing: 10,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     AppWidgets.toggleButton(male ,AppIcons.maleIcon,"Male",() {
                       setState(() {
                         male = !male;
                         if (male) {
                           female = false;
                         }
                       });
                     },),
                     AppWidgets.toggleButton(female,AppIcons.femaleIcon,"Female",() {
                       setState(() {
                         female = !female;
                         if (female) {
                           male = false;
                         }
                       });
                     },)
                   ],
                 ),
                 SizedBox(height: 25,),
                 Divider(thickness: 2,height: 0,),
                 AppWidgets.labelText1("Select Design:"),
               ],
             ),
           ),
            SizedBox(
              height: 140,
              child: ListView.builder(
                itemCount: 10,
                  padding: EdgeInsets.only(left:19,right: 19 ),
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    bool isSelected = selectedIndex == index;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index; // Update selected item
                        });
                      },
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(5,5,5,15),
                        child: Container(
                          width: 90,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                              border: isSelected?Border.all(color: AppColors.primaryColor2):null,
                              boxShadow: [BoxShadow(
                                  color: AppColors.black.withOpacity(0.1),offset: const Offset(0, 4),blurRadius:11.199999809265137
                              )]
                          ),
                          child: Column(
                            spacing: 10,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Container(
                                height: 70,
                                width: 70,
                                decoration: BoxDecoration(
                                  color: AppColors.background,
                                  borderRadius: BorderRadius.circular(50)
                                ),
                              ),
                              Text("Shirt",style: GoogleFonts.poppins(fontSize:15,fontWeight:FontWeight.w500,color:isSelected?AppColors.primaryColor2:AppColors.black)),

                            ],
                          ),
                        ),
                      ),
                    );
                  },
              ),
            ),
            Padding(
              padding:EdgeInsets.symmetric(horizontal:24),
              child: Column(
                children: [
                  SizedBox(height: 15,),
                  Divider(thickness: 2,height: 0,),
                  AppWidgets.labelText1("Images:"),
                  Row(
                    spacing: 10,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      NewClientImagesCard(text: "Clint Photo",),
                      NewClientImagesCard(text: "Cloth Photo",),
                      // AppWidgets.newClientImagesCard("Clint Photo",AppIcons.clientNetworkImage,(){}),
                      // AppWidgets.newClientImagesCard("Cloth Photo",AppIcons.clothNetworkImage,(){}),
                    ],
                  )
                ],
              ),
            ),


            SizedBox(height: 130,)

          ],
        ),
      ),
    );
  }
}
