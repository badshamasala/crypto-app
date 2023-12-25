import 'package:crypto_app/Screens/manage_wallet.dart';
import 'package:crypto_app/Screens/security_centre_screen.dart';
import 'package:crypto_app/Screens/theme.dart';
import 'package:crypto_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          ColorConstants.backgroundColorDarkBlue,
          Colors.black,
          ColorConstants.backgroundColorPurple,
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Settings'),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          elevation: 2,
        ),
        backgroundColor: Colors.transparent,
        body: ListView.separated(
            padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
            separatorBuilder: (context, index) => SizedBox(
                  height: 10.h,
                ),
            itemCount: settings_data.length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
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
                      print("hhh");
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
                      print("hhh");
                      break;
                    default:
                  }
                },
                dense: true,
                horizontalTitleGap: 0,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                title: Text(
                  settings_data[index]["title"],
                  style: const TextStyle(color: Colors.white),
                ),
                leading: Icon(
                  settings_data[index]["icon"],
                  color: Colors.white,
                ),
                trailing: const Icon(
                  Icons.chevron_right_rounded,
                  color: Colors.white,
                ),
                tileColor: ColorConstants.listtitleColor,
              );
            }),
      ),
    );
  }
}

List<Map<String, dynamic>> settings_data = [
  {
    "title": "Manage Wallet",
    "icon": Icons.account_balance_wallet,
  },
  {"title": "Security Centre", "icon": Icons.security},
  {"title": "Wallet connect", "icon": Icons.account_balance_wallet},
  {"title": "Theme", "icon": Icons.contrast},
  {"title": "Terms and condition", "icon": Icons.menu},
  {"title": "Privacy policy", "icon": Icons.menu},
  {"title": "Contact", "icon": Icons.call},
  {"title": "Telegram", "icon": Icons.telegram},
  {"title": "Twitter", "icon": Icons.flutter_dash},
  {"title": "About App", "icon": Icons.smartphone},
];
