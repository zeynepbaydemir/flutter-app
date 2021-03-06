import 'package:flutter/material.dart';




class Sayfa_Saat extends StatelessWidget {
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
                      image: AssetImage("images/saat.jpg"),
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
                    'Saat Kulesi',
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
                    "Konak Meydan??'ndaki ??zmir H??k??met Kona????, Kemeralt?? ??ar????s?? giri??i, Konak Yal?? Camii ve ??zmir B??y??k??ehir Belediyesi binas?? aras??ndaki alanda yer al??r.25 metre y??ksekli??inde ve d??rt katl?? olan kule, Sultan II. Abd??lhamid'in iradesi gere??i Osmanl?? vilayetlerinde ayn?? d??nemde meydana getirilmi?? bir??ok saat kulesinden birisidir.Ancak ??zg??n mimarisi ve yap??m??nda izlenen y??ntem nedeniyle di??er saat kuleleri aras??nda ??zel bir yer edinmi??tirOsmanl?? saat kuleleri i??inde en estetik g??r??n????l?? ve en zarifi olarak kabul edilir.Osmanl?? saat kuleleri i??inde en estetik g??r??n????l?? ve en zarifi olarak kabul edilir.",






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