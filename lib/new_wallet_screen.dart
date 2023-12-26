import 'package:crypto_app/colors.dart';
import 'package:crypto_app/enter_key_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class NewWalletScreen extends StatefulWidget {
  const NewWalletScreen({Key? key}) : super(key: key);

  @override
  State<NewWalletScreen> createState() => _NewWalletScreenState();
}

class _NewWalletScreenState extends State<NewWalletScreen> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        toolbarHeight: 70.h,
        titleSpacing: 0,
        backgroundColor: ColorConstants.appBarBackgroundColor,
        title: Text(
          "New Wallet",
          style: GoogleFonts.orbitron(
              fontWeight: FontWeight.bold, fontSize: 16.sp),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
        elevation: 0,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.push<void>(
                  context,
                  MaterialPageRoute<void>(
                    builder: (BuildContext context) => const EnterKeyScreen(),
                  ),
                );
              },
              child: Text(
                "Create",
                style: GoogleFonts.montserrat(color: Color(0xffD3D3D3)),
              ))
        ],
      ),
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
              SizedBox(
                height: MediaQuery.of(context).size.height / 35.h,
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      alignment: Alignment.centerLeft,
                      visualDensity: VisualDensity.compact,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                      minimumSize: Size(double.infinity, 50.h),
                      foregroundColor: Colors.white,
                      backgroundColor: ColorConstants.primaryColor),
                  onPressed: () {
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const EnterKeyScreen(),
                      ),
                    );
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [Text("Mnemonics"), Icon(Icons.chevron_right)],
                  )),
              SizedBox(
                height: MediaQuery.of(context).size.height / 35.h,
              ),
              Container(
                height: 40.h,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: ColorConstants.primaryColor,
                    borderRadius: BorderRadius.circular(3.sp)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 15.w),
                      child: Text(
                        "Passphrase",
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                    Transform.scale(
                      scale: 0.6,
                      child: CupertinoSwitch(
                          trackColor: Colors.grey,
                          value: isSelected,
                          onChanged: (value) {
                            setState(() {
                              isSelected = !isSelected;
                            });
                            print(isSelected);
                          }),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height / 20.h,
              ),
              isSelected
                  ? Column(
                      children: [
                        TextField(
                          cursorColor: ColorConstants.primaryColor,
                          decoration: inputDecoration("Passpharse"),
                          textCapitalization: TextCapitalization.words,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400),
                          controller: null,
                          keyboardType: TextInputType.name,
                          onChanged: (val) {},
                          onSubmitted: (value) {
                            FocusScope.of(context).unfocus();
                          },
                        ),
                        SizedBox(
                          height: MediaQuery.of(context).size.height / 35.h,
                        ),
                        TextField(
                          cursorColor: ColorConstants.primaryColor,
                          decoration: inputDecoration("Confirm"),
                          textCapitalization: TextCapitalization.words,
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15.sp,
                              fontWeight: FontWeight.w400),
                          controller: null,
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
                          "Passphrase add an additional security layer to the wallets, enabling users to create multiple independent multi-icon wallets using a single mnemonic recovery phrase, but associated with different passwords. To restore these wallets, a user will require mnemonic recovery phrases as well as a password for each to be restored wallet.",
                          style: GoogleFonts.montserrat(
                              color: Color(0xffDDDDDD), fontSize: 11.sp),
                        )
                      ],
                    )
                  : Offstage()
            ],
          ),
        ),
      ),
    );
  }

  inputDecoration(String text) {
    return InputDecoration(
      errorStyle: TextStyle(fontSize: 14.sp, color: Colors.redAccent),
      fillColor: Colors.transparent,
      filled: true,
      contentPadding: EdgeInsets.symmetric(
        horizontal: 20.w,
      ),
      hintText: text,
      hintStyle: TextStyle(
          color: Color(0xFF777676),
          fontSize: 10.sp,
          letterSpacing: 0.4,
          fontWeight: FontWeight.w400,
          fontFamily: "Circular Std"),
      prefixStyle: null,
      border: OutlineInputBorder(
        borderSide: BorderSide(color: ColorConstants.primaryColor),
        borderRadius: BorderRadius.circular(5.sp),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorConstants.primaryColor),
        borderRadius: BorderRadius.circular(5.sp),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: ColorConstants.primaryColor),
        borderRadius: BorderRadius.circular(5.sp),
      ),
    );
  }
}
