import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../utils/app_color.dart';
import '../../../../utils/app_icons.dart';

class OrderDetailsScreen extends StatefulWidget {
  const OrderDetailsScreen({super.key});

  @override
  State<OrderDetailsScreen> createState() => _OrderDetailsScreenState();
}

class _OrderDetailsScreenState extends State<OrderDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor2,
        title: Text(
          "Sabir Saleem",
          style: GoogleFonts.poppins(color: AppColors.white),
        ),
        iconTheme: IconThemeData(color: AppColors.white),
        elevation: 10,
        actions: [
         Padding(
            padding: const EdgeInsets.only(right: 8),
            child: IconButton(
              onPressed:(){},
              icon: ImageIcon(
                AssetImage(AppIcons.deleteIcon),
                color: AppColors.white,
              ),
            ),
          ),

        ],

      ),
    );
  }
}
