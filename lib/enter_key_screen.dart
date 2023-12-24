import 'package:crypto_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
        title: Text("Enter Key"),
        backgroundColor: Colors.transparent,
        actions: [
          TextButton(
              onPressed: () {},
              child: Text(
                "Next",
                style: TextStyle(color: Colors.white),
              ))
        ],
      ),
      body: Padding(
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
              "Passphrase is the kokw jokjow jokow jojow jow jow\njoo joj2 joj2 joij2e joije2 ije2 jj2e",
              style: TextStyle(color: Colors.grey),
            )
          ],
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
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(5.sp),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(5.sp),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.grey),
        borderRadius: BorderRadius.circular(5.sp),
      ),
    );
  }
}
