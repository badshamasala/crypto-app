import 'package:crypto_app/colors.dart';
import 'package:crypto_app/constant_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class ManageWalletScreen extends StatelessWidget {
  const ManageWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Manage Wallets", context),
      backgroundColor: Colors.black,
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          ColorConstants.backgroundColorDarkBlue,
          Colors.black,
          Colors.black,
          ColorConstants.backgroundColorPurple,
        ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
        child: ListView.separated(
          separatorBuilder: (context, index) => SizedBox(height: 0.5.h),
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
          itemCount: theme_data.length + 1,
          itemBuilder: (BuildContext context, int index) {
            if (index == theme_data.length) {
              return Padding(
                padding: EdgeInsets.only(top: 70.h),
                child: Text(
                  "Tip Restoring an existing wallet but with a new passphrase will generate a brand new wallet. This is handy if you want to use a single 12-24 2ord mnemonic recovery phrase for multiple wallets",
                  style: GoogleFonts.montserrat(
                      color: Colors.white, fontSize: 12.sp),
                ),
              );
            } else {
              return Container(
                decoration: BoxDecoration(
                    color: ColorConstants.listtitleColor,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(index == 0 ? 8.sp : 0),
                        topRight: Radius.circular(index == 0 ? 8.sp : 0),
                        bottomLeft: Radius.circular(
                            index == theme_data.length - 1 ? 8.sp : 0),
                        bottomRight: Radius.circular(
                            index == theme_data.length - 1 ? 8.sp : 0))),
                child: ListTile(
                  dense: true,
                  horizontalTitleGap: 0,

                  leading: Icon(
                    theme_data[index]["icon"],
                    color: Colors.white,
                  ),
                  title: Text(
                    theme_data[index]["title"],
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  // tileColor: ColorConstants.listtitleColor,
                ),
              );
            }
          },
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> theme_data = [
  {
    "title": "Create",
    "icon": Icons.add,
  },
  {
    "title": "Restore",
    "icon": Icons.restore,
  },
  {
    "title": "Watch Address",
    "icon": Icons.visibility,
  },
];
