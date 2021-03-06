import 'package:flutter/material.dart';


class Sayfa_Trabzonkale extends StatelessWidget {
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
                      image: AssetImage("images/trabzonkale.jpg"),
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
                    'Trabzon Kalesi',
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
                    "Arakl?? il??esinde yer alan Trabzon Kalesi, Trabzon???un en me??hur simgelerinden biri haline gelmi?? ve g??n??m??ze gelene kadar kendini korumay?? ba??arm????t??r.??ehrin en y??ksek noktalar??ndan birinde konumlanan kale, tarihi ge??mi??i ile b??y??k yank?? uyand??r??yor. Deniz k??y??s??ndan ba??lay??p tepelere kadar uzanan Trabzon Kalesi, yerli ve yabanc?? pek ??ok turist taraf??ndan yo??un ilgi g??r??yor.Hem do??ayla i?? i??e olupta y??r??y????ler yapaca????n??z hem de tarihi bir yolculu??a ????kaca????n??z bu kale, Yukar?? Hisar, Orta Hisar ve A??a???? Hisar olmak ??zere ???? b??l??mden olu??uyor.",




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