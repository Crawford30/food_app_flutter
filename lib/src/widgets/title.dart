import 'package:flutter/material.dart';

import '../commons.dart';
class customText extends StatelessWidget {
  //Text formatting
   final String text;
   final double size;
   final Colors color;
   final FontWeight weight;

   //we need to initialise by creating a constructor
   customText({@required this.text, this.size, this.color, this.weight});



  @override
  Widget build(BuildContext context) {
    return Text(text, style: TextStyle(fontSize: size ?? 16, color: color ?? black, fontWeight: weight ?? FontWeight.normal),);
  }
}
