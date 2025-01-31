import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:tailor_book/utils/app_color.dart';
import 'package:tailor_book/utils/app_icons.dart';

class UserScreen extends StatefulWidget {
  const UserScreen({super.key});

  @override
  State<UserScreen> createState() => _UserScreenState();
}

class _UserScreenState extends State<UserScreen> {
  bool isSearch = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.primaryColor2,
          surfaceTintColor: Colors.transparent,
          title: Text(
            "TailorBook",
            style: GoogleFonts.poppins(color: AppColors.white),
          ),
          automaticallyImplyLeading: false,
          actions: [
            IconButton(
              onPressed: () {
                setState(() {
                  isSearch = !isSearch;
                });
              },
              icon: ImageIcon(
                AssetImage(AppIcons.searchIcon),
                color: AppColors.white,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: ImageIcon(
                AssetImage(AppIcons.notificationIcon),
                color: AppColors.white,
              ),
            ),
          ],
          bottom: PreferredSize(
            preferredSize: Size(double.infinity, isSearch ? 60 : 0),
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 300),
              curve: Curves.decelerate,
              height: isSearch ? 60 : 0,
              child: SingleChildScrollView(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  child: SizedBox(
                    height: 36,
                    child: TextFormField(
                      style: GoogleFonts.poppins(
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                      cursorColor: Colors.grey,
                      cursorWidth: 1,
                      decoration: InputDecoration(
                        hintText: "Search",
                        hintStyle: GoogleFonts.poppins(
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
                        fillColor: AppColors.background,
                        filled: true,
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(19),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        body: ListView.builder(
          itemCount: 15,
          itemBuilder: (context, index) {
            return Container(
              width: double.infinity,
              color: Colors.white,
              margin: EdgeInsets.all(24),
              height: 100,
            );
          },
        ));
  }
}
