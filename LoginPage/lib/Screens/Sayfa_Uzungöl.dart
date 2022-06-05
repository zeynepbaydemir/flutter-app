import 'package:flutter/material.dart';


class Sayfa_Uzungol extends StatelessWidget {
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
                      image: AssetImage("images/uzungöl.jpg"),
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
                    'Uzungöl',
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
                    "Trabzon’a 99 kilometre, Çaykara ilçesine ise sadece 19 kilometre uzaklıkta yer alan Uzungöl, Trabzon’un en sevilen ve en çok ziyaret edilen turistik noktalarından biri. Her yıl yüz binlerce turist tarafından ziyaret edilen Uzungöl, Haldizen Deresi’nin doğal yollarla önünün kapanması yoluyla oluşmuş.Deniz seviyesinden 1100 metre yüksekte yer alan ve çevresi çam ormanları ile görkemli dağlar tarafından çevrilenmiş Uzungöl, aynı zamanda Türkiye’nin yağmur ormanlarına da ev sahipliği yapıyor. ",


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