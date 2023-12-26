import 'package:crypto_app/colors.dart';
import 'package:crypto_app/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class EnterKeyScreen extends StatefulWidget {
  const EnterKeyScreen({Key? key}) : super(key: key);

  @override
  State<EnterKeyScreen> createState() => _EnterKeyScreenState();
}

class _EnterKeyScreenState extends State<EnterKeyScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 70.h,
        titleSpacing: 0,
        backgroundColor: ColorConstants.appBarBackgroundColor,
        title: Text(
          "Enter Key",
          style: GoogleFonts.orbitron(
              fontWeight: FontWeight.bold, fontSize: 16.sp),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const HomeScreen(),
                  ),
                );
              },
              child: Text("Next",
                  style: GoogleFonts.montserrat(
                    color: Color(0xffD3D3D3),
                  )))
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          ColorConstants.backgroundColorDarkBlue,
          Colors.black,
          Colors.black,
          ColorConstants.backgroundColorPurple,
        ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.w),
          child: Column(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.height / 35.h,
              ),
              TextField(
                cursorColor: ColorConstants.primaryColor,
                decoration: inputDecoration("Country"),
                textCapitalization: TextCapitalization.words,
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.sp,
                    fontWeight: FontWeight.w400),
                controller: null,
                maxLines: 5,
                keyboardType: TextInputType.name,
                onChanged: (val) {},
                onSubmitted: (value) {
                  FocusScope.of(context).unfocus();
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35.h,
              ),
              Text(
                "Enter your mnemonic which consists of between 12 and 24 words. The word needs to be entered in the correct order and separated.",
                style: GoogleFonts.montserrat(
                    color: Color(0xffDDDDDD), fontSize: 11.sp),
              )
            ],
          ),
        ),
      ),
    );
  }

  inputDecoration(String text) {
    return InputDecoration(
      errorStyle: TextStyle(fontSize: 14.sp, color: Colors.redAccent),
      fillColor: Colors.transparent,
      filled: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 10.h),
      hintText: text,
      hintStyle: TextStyle(
          color: Color(0xFFD9D9D9),
          fontSize: 14.sp,
          letterSpacing: 0.4,
          fontWeight: FontWeight.w400,
          fontFamily: "Circular Std"),
      prefixStyle: null,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: ColorConstants.primaryColor),
        borderRadius: BorderRadius.circular(5.sp),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorConstants.primaryColor),
        borderRadius: BorderRadius.circular(5.sp),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorConstants.primaryColor),
        borderRadius: BorderRadius.circular(5.sp),
      ),
    );
  }
}
