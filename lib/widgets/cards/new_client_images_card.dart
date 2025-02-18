import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';

import 'package:tailor_book/utils/app_icons.dart';

import '../../utils/app_color.dart';

class NewClientImagesCard extends StatefulWidget {
  final String text;
  const NewClientImagesCard({
    super.key,
    required this.text,
  });

  @override
  State<NewClientImagesCard> createState() => _NewClientImagesCardState();
}

class _NewClientImagesCardState extends State<NewClientImagesCard> {
  File? _image;

  Future<void> _pickImage() async {
    final picker = ImagePicker();
    final pickedFile = await picker.pickImage(source: ImageSource.camera);

    if (pickedFile != null) {
      setState(() {
        _image = File(pickedFile.path);
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _pickImage();
      },
      child: Container(
        width: MediaQuery.of(context).size.width / 2 - 36,
        height: 130,
        clipBehavior: Clip.hardEdge,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.1),
              offset: const Offset(0, 4),
              blurRadius: 11.2,
            ),
          ],
        ),
        child: Column(
          spacing: 10,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 90,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.grey.withOpacity(0.3),
              ),
              child: _image == null
                  ? Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Image.asset(
                        AppIcons.addImageIcon,
                        color: AppColors.grey1,
                      ),
                    )
                  : Image.file(
                      _image!,
                      fit: BoxFit.cover,
                    ),
            ),
            Text(
              widget.text,
              style: GoogleFonts.poppins(
                fontSize: 15,
                fontWeight: FontWeight.w500,
                color: Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
