import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyText extends StatelessWidget {
  MyText(this.txm, {super.key});
  String txm;

  @override
  Widget build(BuildContext context) {
    return  Text(
      txm,
      style:const  TextStyle(
        color: Colors.white,
        fontSize: 28,
      ),
    );
  }
}
