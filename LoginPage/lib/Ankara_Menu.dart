import 'package:flutter/material.dart';
import 'package:travel/Screens/Sayfa_An%C4%B1tkabir.dart';
import 'package:travel/Screens/Sayfa_Medeniyerlerm%C3%BCze.dart';
import 'package:travel/Screens/Sayfa_Tuzg%C3%B6l%C3%BC.dart';

import '../Screens/Sayfa_Ankarakalesi.dart';
import 'Screens/Sayfa_Ankarakalesi.dart';


class Ankara_Menu extends StatefulWidget {
  const Ankara_Menu({Key? key}) : super(key: key);

  @override
  _Ankara_MenuState createState() => _Ankara_MenuState();
}

class _Ankara_MenuState extends State<Ankara_Menu> {
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
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sayfa_Anitkabir()));
            }
            if (index == 1) {
              //2.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sayfa_Ankarakalesi()));
            }
            if (index == 2) {
              //3.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sayfa_Medeniyetler()));
            }
            if (index == 3) {
              //4.item
              Navigator.push(context, MaterialPageRoute(builder: (context) => Sayfa_Tuzgolu()));
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
                      "Ankara ",
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
                makeDashboardItem("An??tkabir", "images/anitkabir.jpg", 0),
                makeDashboardItem("Ankara Kalesi", "images/ankarakale.jpg", 1),
                makeDashboardItem("Atakule", "images/atakule.jpg", 2),
                makeDashboardItem("Tuz G??l??", "images/tuz.jpg", 3),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
