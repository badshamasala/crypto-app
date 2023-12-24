import 'package:flutter/material.dart';

class ThemeScreen extends StatelessWidget {
  const ThemeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.black,
          Color.fromARGB(212, 17, 15, 129),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          title: const Text('Theme'),
          elevation: 5,
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        ),
        backgroundColor: Colors.grey[900],
        body: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
          separatorBuilder: (context, index) => const SizedBox(
            height: 10,
          ),
          itemCount: theme_data.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 13.0,
              ),
              child: ListTile(
                leading: Icon(
                  theme_data[index]["icon"],
                  color: Colors.white,
                ),
                title: Text(
                  theme_data[index]["title"],
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
                tileColor: Color.fromARGB(255, 86, 80, 80),
              ),
            );
          },
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> theme_data = [
  {
    "title": "Manage Wallet",
    "icon": Icons.account_balance_wallet,
  },
  {
    "title": "Security Centre",
    "icon": Icons.security,
  },
  {
    "title": "Wallet connect",
    "icon": Icons.account_balance_wallet,
  },
];
