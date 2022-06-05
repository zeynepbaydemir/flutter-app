import 'package:flutter/material.dart';




class Sayfa_Selimiye extends StatelessWidget {
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
                      image: AssetImage("images/selimiye.jpg"),
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
                    'Selimiye Camii',
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
                    "Mevlâna Müzesinin yanında bulunmaktadır. II. Sultan Selim’in Konya Valiliği sırasında 1558 yılında yapımına başlanmış ve 1567 yılında tamamlanmıştır. Klâsik Osmanlı mimarîsinin Konya’daki en güzel örneklerinden biridir. Plan itibari ile İstanbul’da bulunan Fatih Câmiine benzemektedir. Merkezî kubbe ile örtülü mekân tek yönden yarım kubbe ile genişletilmiştir. Yedi kubbeli son cemaat mahalli ile iki minaresi bulunan câminin iç mekânı kalem işi ile tezyin edilmiştir.",








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