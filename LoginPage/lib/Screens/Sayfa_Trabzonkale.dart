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
                    "Araklı ilçesinde yer alan Trabzon Kalesi, Trabzon’un en meşhur simgelerinden biri haline gelmiş ve günümüze gelene kadar kendini korumayı başarmıştır.Şehrin en yüksek noktalarından birinde konumlanan kale, tarihi geçmişi ile büyük yankı uyandırıyor. Deniz kıyısından başlayıp tepelere kadar uzanan Trabzon Kalesi, yerli ve yabancı pek çok turist tarafından yoğun ilgi görüyor.Hem doğayla iç içe olupta yürüyüşler yapacağınız hem de tarihi bir yolculuğa çıkacağınız bu kale, Yukarı Hisar, Orta Hisar ve Aşağı Hisar olmak üzere üç bölümden oluşuyor.",




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