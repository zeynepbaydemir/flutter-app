import 'package:flutter/material.dart';




class Sayfa_Mevlana extends StatelessWidget {
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
                      image: AssetImage("images/mevlana.jpg"),
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
                    'Mevlana Müzesi',
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
                    "Konya’da düzenlenen inanç ve kültür turlarının değişmez adreslerinden biri olan Mevlana Müzesi ve Türbesi, tarihi Mevlana dergahının da dahil olduğu yapı kompleksinde 1926 yılında ziyarete açılan Türkiye'nin en eski müzelerinden biri.Ülkemizin en çok ziyaret edilen müzelerinden olan Mevlana Müzesi, aynı zamanda Mevlana Celaleddin Rumi’nin türbesine de ev sahipliği yapıyor.Sultan I. Alâeddin Keykubad tarafından Mevlana’nın babasına hediye edilen gül bahçesindeki Mevlana Türbesi’nin yanı sıra alanda Hürrem Paşa Türbesi, Sinan Paşa Türbesi, Fatma Hatun Türbesi ve Hasan Paşa türbeleri de bulunuyor.",







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