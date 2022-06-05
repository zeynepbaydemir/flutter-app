import 'package:flutter/material.dart';




class Sayfa_Beysehir extends StatelessWidget {
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
                      image: AssetImage("images/beyşehir.jpg"),
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
                    'Beyşehir Gölü',
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
                    "Türkiye'nin 3. büyük gölü ve en büyük tatlı su gölü olan Beyşehir Gölü; zengin kuş çeşitliliği, endemik bitki türleri ve irili ufaklı adalarıyla keşfedilecek pek çok güzelliğe sahip.Zengin balık çeşitliliğinden dolayı olta balıkçılığı ve balık avlama turlarının düzenlendiği gölün çevresinde tertemiz havada doğa yürüyüşlerine ve bisiklet gezilerine çıkabilir; gün batımlarında ve kışın kar yağdığında ise Beyşehir Gölü’nün en güzel fotoğraflarını çekebilirsiniz.",








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