import 'package:flutter/material.dart';

class Sayfa_Galata extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ListView(
          children: [
            Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 2 + 50,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    ),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage("images/galata.jpg"),
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  child: IconButton(
                      icon: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Icon(
                            Icons.arrow_back,
                            size: 30,
                          ),
                        ],
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      }),
                ),
              ],
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Galata Kulesi',
                    style: TextStyle(
                        fontFamily: 'Lobster',
                        fontWeight: FontWeight.normal,
                        fontSize: 35,
                        color:Colors.black87
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "Galata Kulesi ya da m??ze olarak kullan??lmaya ba??lamas?? sonras??ndaki ad??yla Galata Kulesi M??zesi, T??rkiye'nin ??stanbul ??ehrinin Beyo??lu il??esinde bulunan bir kuledir. Ad??n??, bulundu??u Galata semtinden al??r. Galata Surlar?? dahilinde bir g??zetleme kulesi olarak in??a edilen kule g??n??m??zde, bir sergi alan?? ve m??ze olarak kullan??l??r.Hem Beyo??lu'nun hem de ??stanbul'un sembol yap??lar??ndan biridir.",

                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}