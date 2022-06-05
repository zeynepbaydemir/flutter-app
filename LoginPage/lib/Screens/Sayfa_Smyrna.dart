import 'package:flutter/material.dart';




class Sayfa_Smyrna extends StatelessWidget {
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
                      image: AssetImage("images/smyrna.jpg"),
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
                    'Smyrna Antik Kenti',
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
                    "Smyrna Antik Kenti, 12 adet Aiol kentinden biriymiş (Kyme, Larissa, Neonteikhıs, Temnos, Killa, Notion, Aigiroessa, Pitane, Aigai, Myrina, Grynaion, Smyrna).Bu kentlerin M.Ö 1050 yılı civarında Yunanistan’dan bölgeye gelen Aioller tarafından kurulduğu söyleniyor.Kent Miletoslu Hippodamos’un ilkelerini ortaya koyduğu Hippodamos Plan (ızgara kent planı) ile inşa edilmiş.",










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