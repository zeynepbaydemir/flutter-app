import 'package:flutter/material.dart';
import 'package:travel/%C4%B0zmir_Menu.dart';
import 'package:travel/Ankara_Menu.dart';
import 'package:travel/Istanbul_Menu.dart';
import 'package:travel/Konya_Menu.dart';
import 'package:travel/Trabzon_Menu.dart';

import 'Antalya_Menu.dart';

class MakeDashboardItems extends StatefulWidget {
  const MakeDashboardItems({Key? key}) : super(key: key);

  @override
  _MakeDashboardItemsState createState() => _MakeDashboardItemsState();
}

class _MakeDashboardItemsState extends State<MakeDashboardItems> {
  Card makeDashboardItem(String title, String img, int index) {
    return Card(
      elevation: 2,
      margin: const EdgeInsets.all(8),
      child: Container(
        decoration: index == 0 || index == 3 || index == 4
            ? BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(3.0, -1.0),
                  colors: [
                    Color(0xFF004B8D),
                    Color(0xFFffffff),
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 3,
                    offset: Offset(2, 2),
                  )
                ],
              )
            : BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                gradient: const LinearGradient(
                  begin: FractionalOffset(0.0, 0.0),
                  end: FractionalOffset(3.0, -1.0),
                  colors: [
                    Colors.cyan,
                    Colors.amber,
                  ],
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 3,
                    offset: Offset(2, 2),
                  )
                ],
              ),
        child: InkWell(
          onTap: () {
            if (index == 0) {
              //1.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Istanbul_Menu()));
            }
            if (index == 1) {
              //2.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Izmir_Menu()));
            }
            if (index == 2) {
              //3.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Antalya_Menu()));
            }
            if (index == 3) {
              //4.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Ankara_Menu()));
            }
            if (index == 4) {
              //5.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Konya_Menu()));
            }
            if (index == 5) {
              //6.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => const Trabzon_Menu()));
            }
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            mainAxisSize: MainAxisSize.min,
            verticalDirection: VerticalDirection.down,
            children: [
              const SizedBox(height: 0),
              Center(
                child: Image.asset(
                  img,
                  height: 130,
                  width: 130,
                ),
              ),
              const SizedBox(height: 20),
              Center(
                child: Text(
                  title,
                  style: const TextStyle(fontSize: 19, color: Colors.white, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 170, 193, 232),
      body: Column(
        children: [
          const SizedBox(height: 100),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const <Widget>[
                    Text(
                      "Hoş geldiniz, ",
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, fontFamily: 'robotoMono'),
                    ),
                    SizedBox(height: 4),
                    Text(
                      "Şehirler:",
                      style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold, fontFamily: 'robotoMono'),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              padding: const EdgeInsets.all(2),
              children: [
                makeDashboardItem("İstanbul", "images/istanbul.jpg", 0),
                makeDashboardItem("İzmir", "images/izmir.jpg", 1),
                makeDashboardItem("Antalya", "images/antalya.jpg", 2),
                makeDashboardItem("Ankara", "images/ankara.jpg", 3),
                makeDashboardItem("Konya", "images/konya.jpg", 4),
                makeDashboardItem("Trabzon", "images/trabzon.jpg", 5),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
