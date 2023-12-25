import 'package:crypto_app/colors.dart';
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
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Theme'),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          elevation: 2,
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
