import 'package:crypto_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ManageWalletScreen extends StatelessWidget {
  const ManageWalletScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Manage Wallet'),
      ),
      backgroundColor: Colors.black,
      body: ListView.separated(
        separatorBuilder: (context, index) => SizedBox(height: 0.5.h),
        padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
        itemCount: theme_data.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            dense: true,
            horizontalTitleGap: 0,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(index == 1
                        ? 0
                        : index == 2
                            ? 0
                            : 10.sp),
                    topRight: Radius.circular(index == 1
                        ? 0
                        : index == 2
                            ? 0
                            : 10.sp),
                    bottomLeft: Radius.circular(index == 0
                        ? 0
                        : index == 1
                            ? 0
                            : 10.sp),
                    bottomRight: Radius.circular(index == 0
                        ? 0
                        : index == 1
                            ? 0
                            : 10.sp))),
            leading: Icon(
              theme_data[index]["icon"],
              color: Colors.white,
            ),
            title: Text(
              theme_data[index]["title"],
              style: const TextStyle(color: Colors.white, fontSize: 15),
            ),
            tileColor: ColorConstants.listtitleColor,
          );
        },
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
