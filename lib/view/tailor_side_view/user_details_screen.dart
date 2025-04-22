import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../utils/app_color.dart';
import '../../utils/app_icons.dart';
import '../../widgets/app_widgets.dart';
import '../../widgets/cards/client_details_screen_order_card.dart';

class UserDetailsScreen extends StatefulWidget {
  const UserDetailsScreen({super.key});

  @override
  State<UserDetailsScreen> createState() => _UserDetailsScreenState();
}

class _UserDetailsScreenState extends State<UserDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        floatingActionButton: FloatingActionButton(
            onPressed: () {
              // Navigator.push(context, MaterialPageRoute(builder: (context) => const  NewMessageScreen(),));
            },
            shape: const StadiumBorder(),
            backgroundColor: AppColors.primaryColor2,
            child: Icon(
              Icons.add,
              color: AppColors.white,
            )),
        body: Stack(
          children: [
                                                                          //Top Container
            Container(
              width: double.infinity,
              height: 468,
              decoration: BoxDecoration(
                  color: AppColors.primaryColor2,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(40),
                      bottomRight: Radius.circular(40))),
            ),
            Column(
              children: [
                Column(
                  children: [
                    const SizedBox(
                      height: 35,
                    ),
                                                                                        //Back Button,Title and notification button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: AppColors.white,
                            )),
                        Text(
                          'Details',
                          style: GoogleFonts.poppins(
                              fontWeight: FontWeight.w400,
                              fontSize: 20,
                              color: AppColors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 8),
                          child: IconButton(
                            onPressed: () {},
                            icon: ImageIcon(
                              AssetImage(AppIcons.notificationIcon),
                              color: Colors.white,
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 8,
                    ),
                                                                           // User image,name and number
                    SizedBox(
                      height: 60,
                      width: 60,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          AppIcons.clientNetworkImage,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'Sabir Saleem',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 16,
                          color: AppColors.whiteGrey),
                    ),
                    Text(
                      '03245461646',
                      style: GoogleFonts.poppins(
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                          color: AppColors.whiteGrey),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                                                                              // contact buttons
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      spacing: 20,
                      children: [
                        AppWidgets.ClientContactWidget(AppIcons.chatIcon, 5,
                            () {
                          log("message");
                        }),
                        AppWidgets.ClientContactWidget(
                            AppIcons.telephoneIcon, 8, () {
                          log("call");
                        }),
                        AppWidgets.ClientContactWidget(AppIcons.whatsappIcon, 5,
                            () {
                          log("whatsapp");
                        }),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                      clipBehavior: Clip.hardEdge,
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                          color: AppColors.background,
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(40),
                              topRight: Radius.circular(40))),
                                                                         // Orders List
                      child: ListView.builder(
                        itemCount: 15,
                        padding: EdgeInsets.all(20),
                        itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.symmetric(vertical: 8),
                            child: UserDetailsScreenOrderCard(name: "Shalwar Kameez #45",image: AppIcons.clothNetworkImage,dDate: "22 april 2025",date: "22 march 2025",details:"position inset overflow padding margin" , price: 800,),
                          );
                        },
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
