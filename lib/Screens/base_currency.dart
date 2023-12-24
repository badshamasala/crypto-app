import 'package:crypto_app/Screens/manage_wallet.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BaseCurrency extends StatelessWidget {
  const BaseCurrency({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(colors: [
          Colors.black,
          Color.fromARGB(250, 31, 3, 56),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      ),
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text('Bse Currency'),
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
              padding: EdgeInsets.symmetric(
                horizontal: 13.0.w,
              ),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                leading: CircleAvatar(
                  radius: 30.0,
                  backgroundImage: base_currency_data[index]["img"],
                  backgroundColor: Colors.transparent,
                ),
                title: Text(
                  base_currency_data[index]["title"],
                  style: const TextStyle(color: Colors.white, fontSize: 15),
                ),
                tileColor: Colors.grey[900],
                subtitle: Text(
                  base_currency_data[index]["subTitle"],
                  style: const TextStyle(color: Colors.white),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}

List<Map<dynamic, dynamic>> base_currency_data = [
  {
    "img":
        "https://png.pngtree.com/png-vector/20190508/ourmid/pngtree-cartoons-american-flag-png-image_867205.jpg",
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
