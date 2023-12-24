import 'package:flutter/material.dart';

class BaseCurrency extends StatelessWidget {
  const BaseCurrency({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.black,
          Color(0xffb17164F),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Theme'),
          elevation: 5,
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
        ),
        backgroundColor: Colors.transparent,
        body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 3.0, vertical: 10.0),
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemCount: base_currency_data.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 13.0,
              ),
              child: ListTile(
                leading: Icon(
                  base_currency_data[index]["icon"],
                  color: Colors.white,
                ),
                title: Text(
                  base_currency_data[index]["title"],
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
                tileColor: Colors.grey[700],
                subtitle: Text(
                  base_currency_data[index]["subTitle"],
                  style: TextStyle(color: Colors.white),
                ),
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
    "title": "Manage Wallet",
    "icon": Icons.account_balance_wallet,
    "subTitle": "Aubb",
  },
  {
    "title": "Security Centre",
    "icon": Icons.security,
    "subTitle": 'Aub',
  },
  {
    "title": "Wallet connect",
    "icon": Icons.account_balance_wallet,
    "subTitle": 'Aub',
  },
];
