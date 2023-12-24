import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text('Security centre'),
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
          );
        },
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
