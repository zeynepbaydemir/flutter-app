import 'package:flutter/material.dart';
import 'package:travel/cards_design.dart';

class Button extends StatelessWidget {
  const Button({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: (){

          Navigator.push(context, MaterialPageRoute(builder: (context) => const MakeDashboardItems()));

        },
        child:Container(
      height: 50,
      margin: const EdgeInsets.symmetric(horizontal: 50),
      decoration: BoxDecoration(
        color: Colors.cyan[500],
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Center(
        child: Text(
          "Giriş Yap",
          style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
        ),
      ),
    ));
  }
}
