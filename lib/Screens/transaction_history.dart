import 'package:crypto_app/constant_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import '../colors.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBar("Transaction History", context),
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
          itemCount: transaction_history_data.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transaction_history_data[index]["date"],
                          style: GoogleFonts.montserrat(
                              fontSize: 10.sp, color: Color(0xffD8D8D8)),
                        ),
                        Text(
                          transaction_history_data[index]
                              ["transaction_type_sent"],
                          style: GoogleFonts.montserrat(
                              fontSize: 14.sp,
                              color: Color(0xffD8D8D8),
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          transaction_history_data[index]
                              ["transaction_type_receive"],
                          style: GoogleFonts.montserrat(
                              fontSize: 10.sp, color: Color(0xffD8D8D8)),
                        ),
                      ],
                    ),
                    Text(
                      transaction_history_data[index]["transaction_amount"],
                      style: TextStyle(
                          color: index.isEven ? Colors.red : Colors.green),
                    ),
                  ],
                ),
                Divider(
                  color: Color(0xff424242),
                  thickness: 1.sp,
                  height: 20.h,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> transaction_history_data = [
  {
    "date": "Sep 4 2023",
    "transaction_type_sent": "Sent",
    "transaction_type_receive": "Receive",
    "transaction_id": "UTR372279882069",
    "transaction_amount": "-23 G8C",
  },
  {
    "date": "Sep 4 2023",
    "transaction_type_sent": "Sent",
    "transaction_type_receive": "Receive",
    "transaction_id": "UTR372279882069",
    "transaction_amount": "-23 G8C",
  },
  {
    "date": "Sep 4 2023",
    "transaction_type_sent": "Sent",
    "transaction_type_receive": "Receive",
    "transaction_id": "UTR372279882069",
    "transaction_amount": "-23 G8C",
  },
  {
    "date": "Sep 4 2023",
    "transaction_type_sent": "Sent",
    "transaction_type_receive": "Receive",
    "transaction_id": "UTR372279882069",
    "transaction_amount": "-23 G8C",
  },
  {
    "date": "Sep 4 2023",
    "transaction_type_sent": "Sent",
    "transaction_type_receive": "Receive",
    "transaction_id": "UTR372279882069",
    "transaction_amount": "-23 G8C",
  },
  {
    "date": "Sep 4 2023",
    "transaction_type_sent": "Sent",
    "transaction_type_receive": "Receive",
    "transaction_id": "UTR372279882069",
    "transaction_amount": "-23 G8C",
  },
  {
    "date": "Sep 4 2023",
    "transaction_type_sent": "Sent",
    "transaction_type_receive": "Receive",
    "transaction_id": "UTR372279882069",
    "transaction_amount": "-23 G8C",
  },
  {
    "date": "Sep 4 2023",
    "transaction_type_sent": "Sent",
    "transaction_type_receive": "Receive",
    "transaction_id": "UTR372279882069",
    "transaction_amount": "-23 G8C",
  },
  {
    "date": "Sep 4 2023",
    "transaction_type_sent": "Sent",
    "transaction_type_receive": "Receive",
    "transaction_id": "UTR372279882069",
    "transaction_amount": "-23 G8C",
  },
];
