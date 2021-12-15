import 'package:flutter/material.dart';
import 'Texts.dart';

class ContainerCP extends StatelessWidget {
  List<TextComponent> textValue;
  double? width;
  double? height;
  ContainerCP(this.textValue, {this.width, this.height});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: this.width,
        height: this.height,
        margin: EdgeInsets.only(left: 20),
        decoration: BoxDecoration(
            color: Color.fromRGBO(0, 0, 0, 0.25),
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: this.textValue));
  }
}
