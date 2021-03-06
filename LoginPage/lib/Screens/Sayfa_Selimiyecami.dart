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
                    "Mevl??na M??zesinin yan??nda bulunmaktad??r. II. Sultan Selim???in Konya Valili??i s??ras??nda 1558 y??l??nda yap??m??na ba??lanm???? ve 1567 y??l??nda tamamlanm????t??r. Kl??sik Osmanl?? mimar??sinin Konya???daki en g??zel ??rneklerinden biridir. Plan itibari ile ??stanbul???da bulunan Fatih C??miine benzemektedir. Merkez?? kubbe ile ??rt??l?? mek??n tek y??nden yar??m kubbe ile geni??letilmi??tir. Yedi kubbeli son cemaat mahalli ile iki minaresi bulunan c??minin i?? mek??n?? kalem i??i ile tezyin edilmi??tir.",








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