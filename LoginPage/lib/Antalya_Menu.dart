import 'package:flutter/material.dart';
import 'package:travel/Screens/Sayfa_D%C3%BCdenselale.dart';
import 'package:travel/Screens/Sayfa_Side.dart';
import 'package:travel/Screens/Sayfa_Yivliminare.dart';
import 'package:travel/Screens/Sayfa__Hadriankap%C4%B1s%C4%B1.dart';



class Antalya_Menu extends StatefulWidget {
  const Antalya_Menu({Key? key}) : super(key: key);

  @override
  _Antalya_MenuState createState() => _Antalya_MenuState();
}

class _Antalya_MenuState extends State<Antalya_Menu> {
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sayfa_Duden()));
            }
            if (index == 1) {
              //2.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sayfa_HadrianKapisi()));
            }
            if (index == 2) {
              //3.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sayfa_Yivli()));
            }
            if (index == 3) {
              //4.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sayfa_Side()));
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
                      "Antalya ",
                      style: TextStyle(
                          fontSize: 30,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'robotoMono'),
                    ),
                    SizedBox(height: 25),
                    Text(
                      "Gezilecek Yerler:",
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
                makeDashboardItem("Düden Şelalesi", "images/düden.jpg", 0),
                makeDashboardItem("Hadrian Kapısı", "images/hadrian.jpg", 1),
                makeDashboardItem("Yivli Minare", "images/yivli.jpg", 2),
                makeDashboardItem("Side Antik Kenti", "images/side.jpg", 3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}