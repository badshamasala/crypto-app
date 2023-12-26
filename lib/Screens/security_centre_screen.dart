import 'package:crypto_app/constant_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../colors.dart';

class SecurityCentreScreen extends StatefulWidget {
  const SecurityCentreScreen({super.key});

  @override
  State<SecurityCentreScreen> createState() => _SecurityCentreScreenState();
}

class _SecurityCentreScreenState extends State<SecurityCentreScreen> {
  bool password = false;
  bool fingerprint = false;
  bool faceRecognition = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Security Centre", context),
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
            return Column(
              children: [
                ListTile(
                  dense: true,
                  horizontalTitleGap: 0,
                  leading: Text(
                    theme_data[index]["title"],
                    style: const TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  trailing: Transform.scale(
                    scale: 0.5,
                    child: CupertinoSwitch(
                        trackColor: Colors.grey,
                        value: index == 0
                            ? password
                            : index == 1
                                ? fingerprint
                                : faceRecognition,
                        onChanged: (value) {
                          switch (index) {
                            case 0:
                              setState(() {
                                password = !password;
                              });
                              break;

                            case 1:
                              setState(() {
                                fingerprint = !fingerprint;
                              });
                              break;

                            case 2:
                              setState(() {
                                faceRecognition = !faceRecognition;
                              });
                              break;

                            default:
                          }
                        }),
                  ),
                ),
                Divider(
                  thickness: 0.1.sp,
                  height: 0.sp,
                  color: Colors.grey,
                  endIndent: 10.sp,
                  indent: 10.sp,
                )
              ],
            );
          },
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> theme_data = [
  {
    "title": "Passcode",
  },
  {
    "title": "FingerPrint",
  },
  {
    "title": "Face Recognition",
  },
];
