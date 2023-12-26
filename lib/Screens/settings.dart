import 'dart:ui';

import 'package:crypto_app/Screens/base_currency.dart';
import 'package:crypto_app/Screens/manage_wallet.dart';
import 'package:crypto_app/Screens/security_centre_screen.dart';
import 'package:crypto_app/Screens/theme.dart';
import 'package:crypto_app/Screens/transaction_history.dart';
import 'package:crypto_app/colors.dart';
import 'package:crypto_app/constant_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appBar("Settings", context),
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(colors: [
            ColorConstants.backgroundColorDarkBlue,
            Colors.black,
            Colors.black,
            ColorConstants.backgroundColorPurple,
          ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
          child: ListView.separated(
              padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
              separatorBuilder: (context, index) => SizedBox(
                    height: 10.h,
                  ),
              itemCount: settings_data.length,
              itemBuilder: (BuildContext context, int index) {
                return Container(
                  decoration: BoxDecoration(
                      color: ColorConstants.listtitleColor,
                      borderRadius: BorderRadius.circular(8.sp)),
                  child: ListTile(
                    onTap: () {
                      switch (index) {
                        case 0:
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const ManageWalletScreen(),
                            ),
                          );
                          break;
                        case 1:
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const SecurityCentreScreen(),
                            ),
                          );
                          break;
                        case 2:
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const BaseCurrency(),
                            ),
                          );
                          break;
                        case 3:
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const ThemeScreen(),
                            ),
                          );
                          break;
                        case 4:
                          Navigator.push<void>(
                            context,
                            MaterialPageRoute<void>(
                              builder: (BuildContext context) =>
                                  const TransactionHistory(),
                            ),
                          );
                          break;
                        default:
                      }
                    },
                    dense: true,
                    horizontalTitleGap: 0,

                    title: Text(
                      settings_data[index]["title"],
                      style: GoogleFonts.montserrat(
                          color: Colors.white, fontSize: 12.sp),
                    ),
                    leading: Icon(
                      settings_data[index]["icon"],
                      color: Colors.white,
                    ),
                    trailing: Icon(
                      Icons.chevron_right_rounded,
                      color: Colors.white,
                      size: 17.sp,
                    ),
                    // tileColor: ColorConstants.listtitleColor,
                  ),
                );
              }),
        ));
  }
}

List<Map<String, dynamic>> settings_data = [
  {
    "title": "Manage Wallet",
    "icon": Icons.account_balance_wallet,
  },
  {"title": "Security Centre", "icon": Icons.security},
  {"title": "Base Currency", "icon": Icons.account_balance_wallet},
  {"title": "Theme", "icon": Icons.contrast},
  {"title": "Transaction History", "icon": Icons.history},
  {"title": "Privacy policy", "icon": Icons.menu},
  {"title": "Contact", "icon": Icons.call},
  {"title": "Telegram", "icon": Icons.telegram},
  {"title": "Twitter", "icon": Icons.flutter_dash},
  {"title": "About App", "icon": Icons.smartphone},
];
