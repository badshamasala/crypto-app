import 'package:crypto_app/colors.dart';
import 'package:crypto_app/constant_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseCurrency extends StatelessWidget {
  const BaseCurrency({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Base Currency", context),
      body: Container(
        decoration: const BoxDecoration(
            gradient: LinearGradient(colors: [
          ColorConstants.backgroundColorDarkBlue,
          Colors.black,
          Colors.black,
          ColorConstants.backgroundColorPurple,
        ], begin: Alignment.topCenter, end: Alignment.bottomRight)),
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 24.h),
          itemCount: base_currency_data.length,
          itemBuilder: (BuildContext context, int index) {
            return Container(
              decoration: BoxDecoration(
                  color: ColorConstants.listtitleColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(index == 0 ? 8.sp : 0),
                      topRight: Radius.circular(index == 0 ? 8.sp : 0),
                      bottomLeft: Radius.circular(
                          index == base_currency_data.length - 1 ? 8.sp : 0),
                      bottomRight: Radius.circular(
                          index == base_currency_data.length - 1 ? 8.sp : 0))),
              child: Column(
                children: [
                  ListTile(
                    dense: true,
                    horizontalTitleGap: 5.sp,
                    leading: CircleAvatar(
                      radius: 15.sp,
                      backgroundImage:
                          NetworkImage(base_currency_data[index]["img"]),
                      backgroundColor: Colors.transparent,
                    ),
                    title: Text(
                      base_currency_data[index]["title"],
                      style: const TextStyle(color: Colors.white, fontSize: 15),
                    ),
                    subtitle: Text(
                      base_currency_data[index]["subTitle"],
                      style: const TextStyle(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Divider(
                    thickness: 0.1.sp,
                    height: 0.sp,
                    color: Colors.grey,
                    // endIndent: 10.sp,
                    // indent: 10.sp,
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> base_currency_data = [
  {
    "img":
        "https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/640px-Flag_of_Brazil.svg.png",
    "title": "USD",
    "subTitle": '\$',
  },
  {
    "img":
        "https://upload.wikimedia.org/wikipedia/en/thumb/c/c3/Flag_of_France.svg/255px-Flag_of_France.svg.png",
    "title": "CHF",
    "subTitle": '\$',
  },
  {
    "img":
        "https://media.istockphoto.com/id/1409313783/vector/australia-flag-round-icon-isolated-on-white-background.jpg?s=612x612&w=0&k=20&c=4Wu0Uo-mtUE0RiTpT49UMO1yBs1hi7QFYmF7_xp50JU=",
    "title": "CBP",
    "subTitle": '\$',
  },
  {
    "img":
        "https://upload.wikimedia.org/wikipedia/commons/thumb/f/f0/Flag_of_Japan_%28bordered%29.svg/800px-Flag_of_Japan_%28bordered%29.svg.png?20100522074242",
    "title": "JPY",
    "subTitle": '\$',
  },
  {
    "img": "https://cdn.britannica.com/78/6078-004-77AF7322/Flag-Australia.jpg",
    "title": "AUD",
    "subTitle": '\$',
  },
  {
    "img":
        "https://upload.wikimedia.org/wikipedia/en/thumb/0/05/Flag_of_Brazil.svg/640px-Flag_of_Brazil.svg.png",
    "title": "BPL",
    "subTitle": '\$',
  },
];
