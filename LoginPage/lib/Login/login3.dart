import 'package:flutter/material.dart';

class InputField extends StatelessWidget {
  const InputField({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
          child: const TextField(
            decoration: InputDecoration(hintText: "E-posta adresi", hintStyle: TextStyle(color: Colors.grey), border: InputBorder.none),
          ),
        ),
        Container(
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(border: Border(bottom: BorderSide(color: Colors.grey))),
          child: const TextField(
            decoration: InputDecoration(hintText: "Şifre", hintStyle: TextStyle(color: Colors.grey), border: InputBorder.none),
          ),
        ),
      ],
    );
  }
}
