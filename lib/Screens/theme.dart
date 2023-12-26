import 'package:crypto_app/colors.dart';
import 'package:crypto_app/constant_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

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
        appBar: appBar("Theme", context),
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
            itemCount: theme_data.length,
            itemBuilder: (BuildContext context, int index) {
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
                  tileColor: ColorConstants.listtitleColor,
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> theme_data = [
  {
    "title": "Dark",
    "icon": Icons.dark_mode,
  },
  {
    "title": "Light",
    "icon": Icons.light_mode,
  },
  {
    "title": "System",
    "icon": Icons.settings,
  },
];
