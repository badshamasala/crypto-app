import 'package:crypto_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

PreferredSizeWidget appBar(String title, BuildContext context) {
  return AppBar(
    toolbarHeight: 70.h,
    titleSpacing: 0,
    backgroundColor: ColorConstants.appBarBackgroundColor,
    title: Text(
      title,
      style: GoogleFonts.orbitron(fontWeight: FontWeight.bold, fontSize: 16.sp),
    ),
    leading: IconButton(
      onPressed: () {
        Navigator.pop(context);
      },
      icon: const Icon(Icons.arrow_back),
    ),
    elevation: 0,
  );
}
