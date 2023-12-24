import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.black,
          Color.fromARGB(202, 12, 10, 89),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          elevation: 5,
          title: const Text('Settings'),
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.arrow_back)),
        ),
        backgroundColor: Colors.transparent,
        body: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(20)),
          child: Padding(
            padding:
                const EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
            child: ListView.separated(
                padding:
                    const EdgeInsets.symmetric(horizontal: 2.0, vertical: 10.0),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 10,
                    ),
                itemCount: settings_data.length,
                itemBuilder: (BuildContext context, int index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 13.0,
                    ),
                    child: ListTile(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      title: Text(
                        settings_data[index]["title"],
                        style: const TextStyle(color: Colors.white),
                      ),
                      leading: Icon(
                        settings_data[index]["icon"],
                        color: Colors.white,
                      ),
                      trailing: const Icon(
                        Icons.chevron_right_rounded,
                        color: Colors.white,
                      ),
                      tileColor: const Color.fromARGB(255, 118, 111, 111),
                    ),
                  );
                }),
          ),
        ),
      ),
    );
  }
}

List<Map<String, dynamic>> settings_data = [
  {
    "title": "Manage Wallet",
    "icon": Icons.account_balance_wallet,
  },
  {"title": "Security Centre", "icon": Icons.security},
  {"title": "Wallet connect", "icon": Icons.account_balance_wallet},
  {"title": "Theme", "icon": Icons.contrast},
  {"title": "Terms and condition", "icon": Icons.menu},
  {"title": "Privacy policy", "icon": Icons.menu},
  {"title": "Contact", "icon": Icons.call},
  {"title": "Telegram", "icon": Icons.telegram},
  {"title": "Twitter", "icon": Icons.flutter_dash},
  {"title": "About App", "icon": Icons.smartphone},
];
