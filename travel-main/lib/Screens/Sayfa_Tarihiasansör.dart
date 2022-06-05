import 'package:flutter/material.dart';




class Sayfa_Asansor extends StatelessWidget {
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
                      image: AssetImage("images/asansör.jpg"),
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
                    'Tarihi Asansör',
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
                    "Biri diğerinden 58 m yüksekte olan Mithatpaşa Caddesi ile, Şehit Nihatbey Caddesi'nin arasında işleyen iki asansörü barındıran asansör kulesidir. 1907 yılında Musevi iş adamı ""Nesim Levi (Bayraklıoğlu)"" tarafından yaptırılan asansör, birinden diğerine 155 basamakla ulaşılan iki semt arasında hızlı ve kolay ulaşım sağlama amacıyla yaptırılmıştır. Günümüzde İzmir Büyükşehir Belediyesi tarafından eğlence, kültür ve dinlenme mekanı olarak kullanılır; kentin önemli bir turistik durağıdır",










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