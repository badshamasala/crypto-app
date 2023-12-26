import 'package:crypto_app/Screens/settings.dart';
import 'package:crypto_app/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: SafeArea(
        child: Scaffold(
          backgroundColor: Colors.black,
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            title: Text(
              "Crypto App",
              style: TextStyle(color: Colors.white),
            ),
            centerTitle: true,
            bottom: TabBar(
                indicatorColor: Colors.white,
                indicatorWeight: 3.sp,
                tabs: [
                  Tab(
                    text: "OverView",
                  ),
                  Tab(
                    text: "News",
                  ),
                  Tab(
                    text: "Watches",
                  ),
                ]),
            actions: [
              IconButton(
                  onPressed: () {
                    Navigator.push<void>(
                      context,
                      MaterialPageRoute<void>(
                        builder: (BuildContext context) =>
                            const SettingsScreen(),
                      ),
                    );
                  },
                  icon: Icon(
                    Icons.settings,
                    color: Colors.white,
                  ))
            ],
          ),
          body: TabBarView(children: [
            Container(
              child: Center(
                  child: Text(
                "s",
                style: TextStyle(color: Colors.white),
              )),
            ),
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                ColorConstants.backgroundColorDarkBlue,
                Colors.black,
                Colors.black,
                ColorConstants.backgroundColorPurple,
              ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
              child: ListView.separated(
                  padding:
                      EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                  itemBuilder: (c, i) {
                    return Container(
                      padding: EdgeInsets.all(10.sp),
                      decoration: BoxDecoration(
                          color: ColorConstants.listtitleColor,
                          shape: BoxShape.rectangle,
                          borderRadius: BorderRadius.circular(10.sp)),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Coin Telegraph",
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff979494))),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text(
                            "1 inch network co founder belive that we are the\norganizzation plus work",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text("1 inch network co founder higlight that",
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff979494))),
                          SizedBox(
                            height: 10.h,
                          ),
                          Text("21 min ago",
                              style: GoogleFonts.montserrat(
                                  color: Color(0xff979494))),
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (c, i) => SizedBox(
                        height: 15.h,
                      ),
                  itemCount: 10),
            ),
            Container(
              decoration: const BoxDecoration(
                  gradient: LinearGradient(colors: [
                ColorConstants.backgroundColorDarkBlue,
                Colors.black,
                Colors.black,
                ColorConstants.backgroundColorPurple,
              ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
              child: Center(
                  child: Text(
                "Your WatchList is Empty",
                style: TextStyle(color: Colors.white),
              )),
            ),
          ]),
        ),
      ),
    );
  }
}
