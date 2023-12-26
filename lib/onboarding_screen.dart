import 'package:crypto_app/colors.dart';
import 'package:crypto_app/new_wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
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
              Spacer(
                flex: 4,
              ),
              Image.asset(
                "assets/app_logo.png",
                width: 200.w,
                height: 120.h,
              ),
              Spacer(),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      visualDensity: VisualDensity.compact,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size(double.infinity, 50.h),
                      foregroundColor: Color.fromARGB(255, 241, 239, 239),
                      backgroundColor: ColorConstants.primaryColor),
                  onPressed: () {
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const NewWalletScreen(),
                      ),
                    );
                  },
                  child: Text(
                    "Create",
                    style: GoogleFonts.orbitron(),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      visualDensity: VisualDensity.compact,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size(double.infinity, 50.h),
                      foregroundColor: Colors.white,
                      backgroundColor: ColorConstants.primaryColor),
                  onPressed: () {},
                  child: Text(
                    "Restore",
                    style: GoogleFonts.orbitron(),
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35.h,
              ),
              OutlinedButton(
                  style: OutlinedButton.styleFrom(
                      visualDensity: VisualDensity.compact,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size(double.infinity, 50.h),
                      side: BorderSide(
                          color: ColorConstants.primaryColor, width: 1.sp),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.sp),
                      )
                      // backgroundColor: Colors.white
                      ),
                  onPressed: () {},
                  child: Text(
                    "Watch Address",
                    style: GoogleFonts.orbitron(),
                  )),
              Spacer()
            ],
          ),
        ),
      ),
    );
  }
}
