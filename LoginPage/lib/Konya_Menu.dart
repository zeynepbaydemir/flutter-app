import 'package:flutter/material.dart';
import 'package:travel/Screens/Sayfa_%C3%87atalh%C3%B6y%C3%BCk.dart';
import 'package:travel/Screens/Sayfa_Bey%C5%9Fehirg%C3%B6l.dart';
import 'package:travel/Screens/Sayfa_Mevlanam%C3%BCze.dart';
import 'package:travel/Screens/Sayfa_Selimiyecami.dart';




class Konya_Menu extends StatefulWidget {
  const Konya_Menu({Key? key}) : super(key: key);

  @override
  _Konya_MenuState createState() => _Konya_MenuState();
}

class _Konya_MenuState extends State<Konya_Menu> {
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sayfa_Mevlana()));
            }
            if (index == 1) {
              //2.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sayfa_Beysehir()));
            }
            if (index == 2) {
              //3.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sayfa_Catal()));
            }
            if (index == 3) {
              //4.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sayfa_Selimiye()));
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
                  style: const TextStyle(
                      fontSize: 19,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
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
          const SizedBox(height: 30),
          Padding(
            padding: const EdgeInsets.only(left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: const <Widget>[
                    Text(
                      "Konya ",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'robotoMono'),
                    ),
                    SizedBox(height: 25),
                    Text(
                      "Bölgeler:",
                      style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'robotoMono'),
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
                makeDashboardItem("Mevlana Müzesi", "images/mevlana.jpg", 0),
                makeDashboardItem("Beyşehir Gölü", "images/beyşehir.jpg", 1),
                makeDashboardItem("ÇatalHöyük", "images/çatal.jpg", 2),
                makeDashboardItem("Selimiye Camii", "images/selimiye.jpg", 3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}