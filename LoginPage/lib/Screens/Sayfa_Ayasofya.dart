import 'package:flutter/material.dart';

class Sayfa_Ayasofya extends StatelessWidget {
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
                      image: AssetImage("images/ayas.jpg"),
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
                    'Ayasofya',
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
                    "Ayasofya Camii ??stanbul'un en ??nemli yap??lar??ndan bir tanesidir. Y??llar boyunca Ayasofya ??stanbul'un sembol?? haline gelmi??tir. Olduk??a g??rkemli ve ihti??aml?? olan Ayasofya, Do??u Roma ??mparatorlu??u taraf??ndan ??stanbul'da yapt??r??lan en b??y??k kilisedir. D??nya mimari tarihinde Ayasofya'n??n yeri ??ok farkl??d??r."
                    "Y??llarca kilise ve sonras??nda m??ze olarak kullan??lan Ayasofya g??n??m??zde de Cami olarak kullan??lmaktad??r.",
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