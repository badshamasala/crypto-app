import 'package:crypto_app/Screens/settings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

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
            ListView.separated(
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                itemBuilder: (c, i) {
                  return Container(
                    padding: EdgeInsets.all(10.sp),
                    decoration: BoxDecoration(
                        color: Color.fromARGB(255, 74, 73, 73),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(10.sp)),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Coin Telegraph",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "1 inch network co founder belive that we are the\norganizzation plus work",
                          style: TextStyle(
                              color: Colors.white, fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "1 inch network co founder higlight that",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        SizedBox(
                          height: 10.h,
                        ),
                        Text(
                          "21 min ago",
                          style: TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  );
                },
                separatorBuilder: (c, i) => SizedBox(
                      height: 15.h,
                    ),
                itemCount: 10),
            Center(
                child: Text(
              "Your WatchList is Empty",
              style: TextStyle(color: Colors.white),
            )),
          ]),
        ),
      ),
    );
  }
}
