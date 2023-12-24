import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Color.fromARGB(248, 2, 2, 42),
          Colors.black,
          Color(0xffb17164F),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Transaction History',
            style: TextStyle(fontSize: 20),
          ),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          elevation: 5.0,
          backgroundColor: Colors.black,
        ),
        backgroundColor: Colors.transparent,
        body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 10.0),
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemCount: transaction_history_data.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 13.0.w,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          transaction_history_data[index]["date"],
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          transaction_history_data[index]
                              ["transaction_type_sent"],
                          style: TextStyle(color: Colors.white),
                        ),
                        Text(
                          transaction_history_data[index]
                              ["transaction_type_receive"],
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(height: 10.h),
                        Text(
                          transaction_history_data[index]["transaction_id"],
                          style: TextStyle(color: Colors.white),
                        ),
                        Divider(
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                  Text(
                    transaction_history_data[index]["transaction_amount"],
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
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
